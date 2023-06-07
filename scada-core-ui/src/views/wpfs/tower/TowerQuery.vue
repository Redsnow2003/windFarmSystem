<template>
  <div>
    <CCard>
      <CCardBody>
        <CRow>
          <CCol sm="5" lg="2">
            <el-select v-model="towerId" placeholder="请选择">
              <el-option
                v-for="item in dataTower"
                :key="item.id"
                :label="item.name"
                :value="item.id"
              >
              </el-option>
            </el-select>
          </CCol>
          <CCol sm="5" lg="2">
            <el-date-picker
              v-model="queryDate"
              type="date"
              placeholder="选择日期"
              :default-value="new Date()"
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
        <div id="windCharts" style="width: 100%; height: 500px"></div>
      </CCardBody>
    </CCard>
    <CRow>
      <CCol>
        <CDataTable
          :items="dataRealWind"
          :fields="fields"
          :items-per-page="16"
          hover
          sorter
          pagination
        >
          <template #isFanWheelHei="{ item }">
            <td v-if="item.isFanWheelHei === false">否</td>
            <td v-else-if="item.isFanWheelHei === true" style="color: red">
              是
            </td>
          </template>
        </CDataTable>
      </CCol>
    </CRow>
  </div>
</template>

<script>
import { getWindTowerInfo } from "@/api/windTowerInfo";
import { getReaWindInfo } from "@/api/reaWindInfo";
import { getFarmId } from "@/utils/auth";
export default {
  name: "towerQuery",
  data() {
    return {
      fields: [
        { key: "time", label: "时间" },
        { key: "height", label: "层高" },
        { key: "windSpeed", label: "风速" },
        { key: "windDirection", label: "风向" },
        { key: "temperature", label: "气温" },
        { key: "humidity", label: "湿度" },
        { key: "atmosphere", label: "大气压" },
        { key: "isFanWheelHei", label: "是否轮毂高度" },
      ],
      dataTower: [],
      dataRealWind: [],
      farmId: null,
      queryDate: "2021-08-04", //new Date(),
      towerId: 1,
    };
  },
  created() {
    this.setFarmId(getFarmId());
    this.fetchData();
    this.queryRealWindInfo();
  },
  methods: {
    setFarmId(id) {
      this.farmId = id;
    },
    fetchData() {
      getWindTowerInfo(this.farmId)
        .then((response) => {
          this.dataTower = response.data;
          console.log(this.dataTower);
        })
        .catch((error) => {
          console.log(error);
        });
    },

    parseDate(date) {
      let date1 = new Date(date);
      let year = date1.getFullYear();
      let month = date1.getMonth() + 1;
      let day = date1.getDate();
      return year + "-" + month + "-" + day;
    },

    queryRealWindInfo() {
      getReaWindInfo({
        windFarmId: this.farmId,
        towerId: this.towerId,
        date: this.parseDate(this.queryDate),
      })
        .then((response) => {
          this.dataRealWind = response.data;
          this.createChart();
        })
        .catch((error) => {
          console.log(error);
        });
    },

    queryData: function () {
      this.queryRealWindInfo();
    },

    //////////////////////////////
    createChart() {
      let newPromise = new Promise((resolve) => {
        resolve();
      });
      //然后异步执行echarts的初始化函数
      newPromise.then(() => {
        var myChart = this.$echarts.init(document.getElementById("windCharts"));
        var axisLable = [];
        var series10 = [];
        var series30 = [];
        var series50 = [];
        var series80 = [];

        var yMax = -10000;
        var yMin = 10000;
        this.dataRealWind.forEach((data) => {
          if (data.height == 10) {
            series10.push(data.windSpeed);
            axisLable.push(data.time);
          } else if (data.height == 30) {
            series30.push(data.windSpeed);
          } else if (data.height == 50) {
            series50.push(data.windSpeed);
          } else {
            series80.push(data.windSpeed);
          }
          if (data.windSpeed < yMin) yMin = data.windSpeed;
          if (data.windSpeed > yMax) yMax = data.windSpeed;
        });
        if(yMin>=0 )
          yMin*=0.9;
        else
          yMin*=1.1;
        if(yMax>=0)
          yMax = yMax * 1.1;
        else
          yMax*=0.9;
        yMin = Math.round(yMin);
        yMax = Math.round(yMax);
        var option = {
          title: {
            text: "风速",
            textStyle: { color: "#ffffff" },
          },
          tooltip: {
            trigger: "axis",
          },
          legend: {
            data: ["10米风速", "30米风速", "50米风速", "80米风速"],
            textStyle: { color: "#ffffff" },
          },
          barMaxWidth: 50,
          calculable: true,
          xAxis: [
            {
              type: "category",
              data: axisLable,
            },
          ],
          yAxis: [
            {
              max: yMax,
              min: yMin,
              type: "value",
            },
          ],
          series: [
            {
              name: "10米风速",
              type: "line",
              symbol: "none", //去掉点
              smooth: true, //变平滑
              data: series10,
            },
            {
              name: "30米风速",
              type: "line",
              symbol: "none", //去掉点
              smooth: true, //变平滑
              data: series30,
            },
            {
              name: "50米风速",
              type: "line",
              symbol: "none", //去掉点
              smooth: true, //变平滑
              data: series50,
            },
            {
              name: "80米风速",
              type: "line",
              symbol: "none", //去掉点
              smooth: true, //变平滑
              data: series80,
            },
          ],
        };
        myChart.setOption(option);
        window.onresize = function () {
          myChart.resize();
        };
      });
    },
  },
};
</script>