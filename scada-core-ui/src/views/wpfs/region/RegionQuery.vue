<template>
  <div>
    <CDataTable
      :items="dateFilteredItems"
      :fields="fields"
      column-filter
      :items-per-page="5"
      hover
      sorter
      pagination
    >
      <template #short_rate="{ item }">
        <td>{{ item.short_rate.toString() + "%" }}</td>
      </template>
      <template #ultra_rate="{ item }">
        <td>{{ item.ultra_rate.toString() + "%" }}</td>
      </template>
      <template #upload_rate="{ item }">
        <td>{{ item.upload_rate.toString() + "%" }}</td>
      </template>
    </CDataTable>
    <CCard>
      <CCardHeader>数据对比</CCardHeader>
      <CCardBody>
        <div id="testEcharts" style="width: 100%; height: 480px"></div>
      </CCardBody>
    </CCard>
  </div>
</template>
<script>
import { getWindFarmInfoList } from "@/api/windfarminfo";

export default {
  name: "windfarminfo",

  data() {
    return {
      list: null,
      fields: [
        { key: "name", label: "风场名" },
        { key: "farm_no", label: "风场编号" },
        { key: "short_rate", label: "短期预报精度" },
        { key: "ultra_rate", label: "超短期预报精度" },
        { key: "upload_rate", label: "上传率" },
        { key: "caretaker", label: "联系人" },
        { key: "telephone", label: "电话" },
        { key: "address", label: "地址" },
      ],
      dateFilteredItems: [],
      datacollection: null,
      titles: [],
    };
  },

  created() {
    this.fetchData();
  },

  methods: {
    fetchData() {
      getWindFarmInfoList()
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
        this.titles.push(data.name);
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
          data: [],
        },
      ];

      dataArr.forEach((data) => {
        this.datacollection[0].data.push(data.short_rate);
        this.datacollection[1].data.push(data.ultra_rate);
        this.datacollection[2].data.push(data.upload_rate);
      });
    },
    createCharts(dataArr) {
      // 基于准备好的dom，初始化echarts实例
      debugger;
      var myChart = this.$echarts.init(document.getElementById("testEcharts"));

      var legendData = ["短期准确率", "超短期准确率", "上传率"]; //标题
      var axisLable = this.titles; //x轴
      var seriesValue1 = [];
      var seriesValue2 = [];
      var seriesValue3 = [];
      dataArr.forEach((data) => {
        seriesValue1.push(data.short_rate);
        seriesValue2.push(data.ultra_rate);
        seriesValue3.push(data.upload_rate);
      });

      // 指定图表的配置项和数据
      var option = {
        title: {
          text: "数据对比",
          textStyle:{color:'#d0f5f5'}
        },
        tooltip: {
          trigger: "axis",
        },
        legend: {
          data: legendData, //['一模','二模','三模']
          textStyle:{color:'#d0f5f5'}
        },
        barMaxWidth: "20px",
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
            data: axisLable, 
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
            
            name: "短期准确率", 
            type: "bar",
            data: seriesValue1, 
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
            name: "超短期准确率", 
            type: "bar",
            data: seriesValue2,
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
            name: "上传率", 
            type: "bar",
            data: seriesValue3,           
            color: "rgba(95,158,160,0.6)",
          },
        ],
      };
      // 使用刚指定的配置项和数据显示图表。
      myChart.setOption(option);
      window.onresize = function () {
      myChart.resize();
      }
    },
  },
};
</script>
