<template>
  <div>
    <CCard>
      <CCardBody>
        <CRow>
          <CCol sm="6" lg="3">
            <el-date-picker
              v-model="search.date"
              value-format="yyyy-MM-dd"
              type="daterange"
              align="right"
              unlink-panels
              range-separator="-"
              start-placeholder="开始日期"
              end-placeholder="结束日期"
              :default-value="this.search.date"
              :picker-options="pickerOptions"
            >
            </el-date-picker>
          </CCol>
          <CCol sm="2" lg="1">
            <CButton color="light" v-on:click="queryData">查询</CButton>
          </CCol>
        </CRow>
      </CCardBody>
    </CCard>
    <CCard>
      <CCardBody>
        <div id="echartsRate" style="width: 100%; height: 480px"></div>
      </CCardBody>
    </CCard>
    <CDataTable
      :items="dateFilteredItems"
      :fields="fields"
      :items-per-page="10"
      hover
      sorter
      pagination
    >
      <template #date="{ item }">
        <td>{{ item.date.toString().substring(0,10) }}</td>
      </template>
      <template #shortRate="{ item }">
        <td>{{ item.shortRate.toString() + "%" }}</td>
      </template>
      <template #ultraRate="{ item }">
        <td>{{ item.ultraRate.toString() + "%" }}</td>
      </template>
      <template #uploadRate="{ item }">
        <td>{{ item.uploadRate.toString() + "%" }}</td>
      </template>
    </CDataTable>
  </div>
</template>


<script>
import { getAccuracyRateInfo } from "@/api/accuracyRateInfo";
import { getFarmId } from "@/utils/auth";
export default {
  name: "AccuracyRateQuery",

  data() {
    return {
      search: {
        date: [],
        startDate: "2021-07-25",
        endDate: "2021-08-10",
      },
      pickerOptions: {
        onPick: ({ maxDate, minDate }) => {
          this.search.startDate = minDate;
          this.search.endDate = maxDate;
        },

        shortcuts: [
          {
            text: "最近一周",
            onClick(picker) {
              const end = new Date();
              const start = new Date();
              start.setTime(start.getTime() - 3600 * 1000 * 24 * 7);
              picker.$emit("pick", [start, end]);
            },
          },
          {
            text: "最近一个月",
            onClick(picker) {
              const end = new Date();
              const start = new Date();
              start.setTime(start.getTime() - 3600 * 1000 * 24 * 30);
              picker.$emit("pick", [start, end]);
            },
          },
          {
            text: "最近三个月",
            onClick(picker) {
              const end = new Date();
              const start = new Date();
              start.setTime(start.getTime() - 3600 * 1000 * 24 * 90);
              picker.$emit("pick", [start, end]);
            },
          },
        ],
      },
      value2: "",

      ///////////////////////////////////////////////
      list: null,
      fields: [
        { key: "date", label: "日期" },
        { key: "shortRate", label: "短期预报精度" },
        { key: "ultraRate", label: "超短期预报精度" },
        { key: "uploadRate", label: "上传率" },
      ],
      dateFilteredItems: [],
      datacollection: null,
      titles: [],
      reportRate: [],
      shortRate: [],
      ultraRate: [],
      farmId: 1,
    };
  },

  created() {
    this.search.startDate = new Date("2021-10-20"); //2012-12-1   handleTimeOld是我用来获取当月的第一天的
    this.search.endDate = new Date("2021-11-02"); //2012-12-1 handleTimeNew是获取今天的日期
    this.search.date.push(this.search.startDate);
    this.search.date.push(this.search.endDate);

    this.setFarmId(getFarmId());
    this.fetchData();
  },

  methods: {
    setFarmId(id) {
      this.farmId = id;
    },
    parseDate(date) {
      let date1 = new Date(date);
      let year = date1.getFullYear();
      let month = date1.getMonth() + 1;
      let day = date1.getDate();
      return year + "-" + month + "-" + day;
    },
    ////////////////////
    queryData: function () {
      this.fetchData();
    },

    fetchData() {
      getAccuracyRateInfo({
        windFarmId: this.farmId,
        startDate: this.parseDate(this.search.startDate),
        endDate: this.parseDate(this.search.endDate),
      })
        .then((response) => {
          this.dateFilteredItems = response.data;
          this.createTitles(response.data);
          this.createCollection(response.data);

          this.createCharts(response.data);
        })
        .catch((error) => {
          console.log(error);
        });
    },
    createTitles(dataArr) {
      this.titles = [];
      dataArr.forEach((data) => {
        this.titles.push(data.date.substring(0,10));
      });
    },
    createCollection(dataArr) {
      this.datacollection = [
        {
          label: "短期预测准确率",
          backgroundColor: "rgba(255, 0, 0, 0.3)",
          borderColor: "rgba(255,200,200, 0.5)",
          borderWidth: 2,
          minBarLength: 50,
          symbol: "none", //去掉点
          smooth: true, //变平滑
          data: [],
        },
        {
          label: "超短期预测准确率",
          backgroundColor: "green",

          data: [],
        },
        {
          label: "上传率",
          backgroundColor: "blue",
          symbol: "none", //去掉点
          smooth: true, //变平滑
          data: [],
        },
      ];

      dataArr.forEach((data) => {
        this.datacollection[0].data.push(data.shortRate);
        this.datacollection[1].data.push(data.ultraRate);
        this.datacollection[2].data.push(data.uploadRate);
      });
    },
    createCharts(dataArr) {
      // 基于准备好的dom，初始化echarts实例

      var myChart = this.$echarts.init(document.getElementById("echartsRate"));

      var legendData = ["短期准确率", "超短期准确率", "上传率"]; //标题
      var axisLable = this.titles; //x轴
      var seriesValue1 = [];
      var seriesValue2 = [];
      var seriesValue3 = [];
      dataArr.forEach((data) => {
        seriesValue1.push(data.shortRate);
        seriesValue2.push(data.ultraRate);
        seriesValue3.push(data.uploadRate);
      });

      // 指定图表的配置项和数据
      var option = {
        title: {
          text: "数据对比",
          textStyle: { color: "#d0f5f5" },
        },
        tooltip: {
          trigger: "axis",
        },
        legend: {
          data: legendData,
          textStyle: { color: "#d0f5f5" },
        },
        barMaxWidth: 50,
        toolbox: {
          show: true,
          feature: {
            dataView: { show: true, readOnly: false },
            magicType: { show: true, type: ["line", "bar"] },
            restore: { show: true },
            saveAsImage: { show: true },
          },
        },
        calculable: true,
        xAxis: [
          {
            type: "category",
            data: axisLable, //['数学','语文','英语','综合']
          },
        ],
        yAxis: [
          {
            type: "value",
          },
        ],
        series: [
          {
            itemStyle:
            {
               borderColor:"rgba(224,255,255,0.6)",
               borderWidth:1, 
               borderType:'solid',
               barBorderRadius:[2, 2, 0, 0],
            },
            name: "短期准确率", //'一模',
            type: "bar",
            symbol: "none", //去掉点
            smooth: true, //变平滑
            data: seriesValue1, //[78, 80, 87, 93],
             color: "rgba(176,224,230,0.6)",
          },
          {
            itemStyle:
            {
               borderColor:"rgba(224,255,255,0.6)",
               borderWidth:1, 
               borderType:'solid',
               barBorderRadius:[2, 2, 0, 0],
            },
            name: "超短期准确率", //'二模',
            type: "bar",
            symbol: "none", //去掉点
            smooth: true, //变平滑
            data: seriesValue2, //[90, 77, 62, 76],
            color: "rgba(128,180,180,0.6)",
          },
          {
            itemStyle:
            {
               borderColor:"rgba(224,255,255,0.6)",
               borderWidth:1, 
               borderType:'solid',
               barBorderRadius:[2, 2, 0, 0],
            },
            name: "上传率", //'三模',
            type: "bar",
            symbol: "none", //去掉点
            smooth: true, //变平滑
            data: seriesValue3, //[91, 78, 87, 89],
            barMinWidth: "10px",
            color: "rgba(95,158,160,0.6)",
          },
        ],
      };
      // 使用刚指定的配置项和数据显示图表。
      myChart.setOption(option);
      window.onresize = function () {
        myChart.resize();
      };
    },
  },
};
</script>