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
        <CRow>
          <CCol sm="12" lg="6">
            <div id="windCharts" style="width: 100%; height: 500px"></div>
          </CCol>
          <CCol sm="12" lg="6">
            <div id="windCharts2" style="width: 100%; height: 500px"></div>
          </CCol>
        </CRow>
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
          this.createChart2();
        })
        .catch((error) => {
          console.log(error);
        });
    },

    queryData: function () {
      this.queryRealWindInfo();
    },

    createChart2() {
      let newPromise = new Promise((resolve) => {
        resolve();
      });
      //然后异步执行echarts的初始化函数
      newPromise.then(() => {
        var myChart = this.$echarts.init(
          document.getElementById("windCharts2")
        );
        var windLevel_4 = [0, 0, 0, 0, 0, 0, 0, 0];
        var windLevel4_12 = [0, 0, 0, 0, 0, 0, 0, 0];
        var windLevel12_ = [0, 0, 0, 0, 0, 0, 0, 0];
        this.dataRealWind.forEach((data) => {
          if (data.height == 80) {
            var angle = data.windDirection + 22.5;
            if (angle >= 360) angle = angle - 360;
            var Num = parseFloat(angle / 45);
            var index = Math.floor(Num);
            if (data.windSpeed < 4) windLevel_4[index]++;
            else if (data.windSpeed > 12) windLevel12_[index]++;
            else windLevel4_12[index]++;
          }
        });
        var option;
        option = {
          title: {
            text: "风速风向玫瑰图",
            textStyle: { color: "#ffffff" },
          },
          angleAxis: {
            type: "category",
            startAngle: 112.5,
            data: [
              "正北",
              "东北",
              "正东",
              "东南",
              "正南",
              "西南",
              "正西",
              "西北",
            ],
          },
          radiusAxis: {
            axisLine: {
              show: false,
            },
          },
          polar: {},
          series: [
            {
              type: "bar",
              data: windLevel_4,
              coordinateSystem: "polar",
              name: "低风速",
              stack: "a",
              emphasis: {
                focus: "series",
              },
            },
            {
              type: "bar",
              data: windLevel4_12,
              coordinateSystem: "polar",
              name: "中风速",
              stack: "a",
              emphasis: {
                focus: "series",
              },
            },
            {
              type: "bar",
              data: windLevel12_,
              coordinateSystem: "polar",
              name: "高风速",
              stack: "a",
              emphasis: {
                focus: "series",
              },
            },
          ],
          legend: {
            show: true,
            data: ["低风速", "中风速", "高风速"],
            textStyle: { color: "#ffffff" },
          },
        };
        option && myChart.setOption(option);
        window.onresize = function () {
          myChart.resize();
        };
      });
    },
    //////////////////////////////
    createChart() {
      let newPromise = new Promise((resolve) => {
        resolve();
      });
      //然后异步执行echarts的初始化函数
      newPromise.then(() => {
        var myChart = this.$echarts.init(document.getElementById("windCharts"));

        var series10 = [];
        var series30 = [];
        var series50 = [];
        var series80 = [];

        var yMax = -10000;
        var yMin = 10000;
        this.dataRealWind.forEach((data) => {
          if (data.height == 10) {
            var temp = [];
            temp.push(data.windSpeed);
            temp.push(data.windDirection);
            series10.push(temp);
          } else if (data.height == 30) {
            temp = [];
            temp.push(data.windSpeed);
            temp.push(data.windDirection);
            series30.push(temp);
          } else if (data.height == 50) {
            temp = [];
            temp.push(data.windSpeed);
            temp.push(data.windDirection);
            series50.push(temp);
          } else {
            temp = [];
            temp.push(data.windSpeed);
            temp.push(data.windDirection);
            series80.push(temp);
          }
          if (data.windSpeed < yMin) yMin = data.windSpeed;
          if (data.windSpeed > yMax) yMax = data.windSpeed;
        });
        yMin = yMin * 0.9;
        yMax = yMax * 1.1;
        var option = {
          title: {
            text: "风速风向散点图",
            textStyle: { color: "#ffffff" },
          },
          legend: {
            data: [
              "10米风速风向",
              "30米风速风向",
              "50米风速风向",
              "80米风速风向",
            ],
            textStyle: { color: "#ffffff" },
          },
          symbolSize: 8,
          barMaxWidth: 50,
          calculable: true,
          xAxis: {},
          yAxis: {},
          series: [
            {
              name: "10米风速风向",
              type: "scatter",
              data: series10,
            },
            {
              name: "30米风速风向",
              type: "scatter",
              data: series30,
            },
            {
              name: "50米风速风向",
              type: "scatter",
              data: series50,
            },
            {
              name: "80米风速风向",
              type: "scatter",
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