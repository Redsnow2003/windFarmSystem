<template>
    <div>
      <CRow>
        <CCol sm="3" lg="3">
          <FanInfo fanName="A01" fanStatus="正常" alertLevel="正常" height="160px" />
        </CCol>
        <CCol sm="9" lg="9">
          <CRow>
            <CCol sm="3" lg="3">
              <LgButton name="功率/风速" width="300px" height="80px" />
            </CCol>
            <CCol sm="3" lg="3">
              <LgButton name="压力" width="300px" height="80px" />
            </CCol>
            <CCol sm="3" lg="3">
              <LgButton name="震动" width="300px" height="80px" />
            </CCol>
            <CCol sm="3" lg="3">
              <LgButton name="温度1" width="300px" height="80px" />
            </CCol>
          </CRow>
          <CRow>
            <CCol sm="3" lg="3">
              <LgButton name="转速" width="300px" height="80px" />
            </CCol>
            <CCol sm="3" lg="3">
              <LgButton name="角度" width="300px" height="80px" />
            </CCol>
            <CCol sm="3" lg="3">
              <LgButton name="电压/电流" width="300px" height="80px" />
            </CCol>
            <CCol sm="3" lg="3">
              <LgButton name="温度2" width="300px" height="80px" />
            </CCol>
          </CRow>
        </CCol>
      </CRow>
      <CRow>
        <CCol sm="12" lg="12">
        <div class="card" style="background: #011240; height: 690px">
        <div id="lineChart" style="width: 100%; height: 680px;"></div>
      </div>
    </CCol>
      </CRow>
    </div>
  </template>
  
  
  <script>
  // 引入echarts
import LgButton from "../components/largebutton";
import FanInfo from "./faninfo"; //引入组件
import * as echarts from "echarts";
  export default {
    name: "WindFarmMap",
    components: {
      LgButton,
      FanInfo
  }, //注册组件
  mounted() {
    this.drawSvgMap();
  },
  methods: {
    drawSvgMap() {
      var chartDom = document.getElementById("lineChart");
      var myChart = echarts.init(chartDom);
      var option;

      let base = +new Date(2020, 9, 3);
      let oneDay = 24 * 3600 * 1000;
      let date = [];
      let data = [Math.random() * 300];
      for (let i = 1; i < 1000; i++) {
        var now = new Date((base += oneDay));
        date.push(
          [now.getFullYear(), now.getMonth() + 1, now.getDate()].join("/")
        );
        data.push(Math.round((Math.random() - 0.5) * 20 + data[i - 1]));
      }
      option = {
        tooltip: {
          trigger: "axis",
          position: function (pt) {
            return [pt[0], "10%"];
          },
        },
        title: {
          left: "center",
          text: "Large Area Chart",
        },
        toolbox: {
          feature: {
            dataZoom: {
              yAxisIndex: "none",
            },
            restore: {},
            saveAsImage: {},
          },
        },
        xAxis: {
          type: "category",
          boundaryGap: false,
          data: date,
        },
        yAxis: {
          type: "value",
          boundaryGap: [0, "100%"],
        },
        dataZoom: [
          {
            type: "inside",
            start: 0,
            end: 10,
          },
          {
            start: 0,
            end: 10,
          },
        ],
        series: [
          {
            name: "Fake Data",
            type: "line",
            symbol: "none",
            sampling: "lttb",
            itemStyle: {
              color: "rgb(255, 70, 131)",
            },
            areaStyle: {
              color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [
                {
                  offset: 0,
                  color: "rgb(255, 158, 68)",
                },
                {
                  offset: 1,
                  color: "rgb(255, 70, 131)",
                },
              ]),
            },
            data: data,
          },
        ],
      };

      option && myChart.setOption(option);
    },
  },
  };
  </script>