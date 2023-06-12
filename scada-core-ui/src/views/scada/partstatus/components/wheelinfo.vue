<template>
  <div class="card" style="background: #011240; height: 150px">
    <div class="card-body" style="color: #9fdfdf">
      <CRow>
        <CCol sm="2" lg="2">
          <CRow style="height: 150px">
            <CCol
              sm="3"
              lg="3"
              style="width: 35%; text-align: center"
            >
              <img src="../../../../../public/fan/正常风机.png" />
              <div class="h3 text">{{ fanName }}</div>
            </CCol>
            <CCol sm="9" lg="9" class="h5 py-3 text-center link-right">
              <div class="text">
                <img src="../../../../../public/icon/风机.png" /> 风机状态：{{
                  fanStatus
                }}
              </div>
              <div class="text">
                <img src="../../../../../public/icon/警报等级.png" />
                警报等级：{{ alertLevel }}
              </div>
            </CCol>
          </CRow>
        </CCol>
        <CCol sm="10" lg="10">
          <CRow>
            <CCol sm="1" lg="1"  style="text-align: center">
              <h3>1号桨叶</h3>
            </CCol>
            <CCol sm="3" lg="3">
              <div
              id="blade1Chart"
              style="width: 100%; height: 150px"
            ></div>
            </CCol>
            <CCol sm="1" lg="1"  style="text-align: center">
              <h3>2号桨叶</h3>
            </CCol>
            <CCol sm="3" lg="3">
              <div
              id="blade2Chart"
              style="width: 100%; height: 150px"
            ></div>
            </CCol>
            <CCol sm="1" lg="1"  style="text-align: center">
              <h3>3号桨叶</h3>
            </CCol>
            <CCol sm="3" lg="3">
              <div
              id="blade3Chart"
              style="width: 100%; height: 150px"
            ></div>
            </CCol>
          </CRow>
        </CCol>
      </CRow>
    </div>
  </div>
</template>
      
<script>
import * as echarts from "echarts";
export default {
  name: "WheelInfo",
  data() {
    return {};
  },
  props: {
    fanName: String, //风机名称
    fanStatus: String, //风机状态
    alertLevel: String, //警报等级
  },
  mounted() {
      this.drawBlade1Chart()
      this.drawBlade2Chart()
      this.drawBlade3Chart()
    },
    methods: {
      ///////////////////////////////////////////////////
      drawBlade1Chart() {
        var chartDom = document.getElementById("blade1Chart");
        var myChart = echarts.init(chartDom);
        var option;
  
        option = {
          tooltip: {
            formatter: "{a} <br/>{b} : {c}%",
          },
          title: {
            text: "全场风速",
            left: "42%",
            top: "60%",
            textStyle: {
              color: "#9fdfdf",
              fontSize: 14,
            },
          },
          series: [
            {
              name: "Pressure",
              type: "gauge",
              min: 0,
              max: 20,
              splitNumber: 5,
              startAngle: 190,
              endAngle: -10,
              progress: {
                show: true,
                width: 8,
                roundCap: true,
                itemStyle: {
                  color: {
                    type: "linear",
                    x: 0,
                    y: 1,
                    x2: 1,
                    y2: 1,
                    colorStops: [
                      {
                        offset: 0,
                        color: "#4ed6b3", // 0% 处的颜色
                      },
                      {
                        offset: 1,
                        color: "#b2df6b", // 100% 处的颜色
                      },
                    ],
                  },
                },
              },
              center: ["50%", "50%"],
              radius: "100%",
              detail: {
                valueAnimation: true,
                formatter: "{value}",
              },
              axisLine: {
                roundCap: true,
                lineStyle: {
                  width: 8,
                  color: [[1, "#001247"]],
                },
              },
              splitLine: {
                show: true,
                length: 5,
                distance: 5,
                lineStyle: {
                  width: 1,
                  color: "#fff",
                },
              },
              axisTick: {
                show: true,
                splitNumber: 2,
                length: 3,
                distance: 5,
                lineStyle: {
                  width: 1,
                  color: "#fff",
                },
              },
              axisLabel: {
                show: true,
                color: "#fff",
              },
              pointer: {
                show: false,
              },
              data: [
                {
                  value: 12.5,
                  name: "m/s",
                  title: {
                    offsetCenter: [0, 0],
                    color: "#9fdfdf",
                    fontSize: 15,
                  },
                  detail: {
                    offsetCenter: [0, -20],
                    color: "#9fdfdf",
                    fontSize: 22,
                  },
                },
              ],
            },
          ],
        };
  
        option && myChart.setOption(option);
      },
      drawBlade2Chart() {
          var chartDom = document.getElementById("blade2Chart");
        var myChart = echarts.init(chartDom);
        var option;
  
        option = {
          tooltip: {
            formatter: "{a} <br/>{b} : {c}%",
          },
          title: {
            text: "全场风速",
            left: "42%",
            top: "60%",
            textStyle: {
              color: "#9fdfdf",
              fontSize: 14,
            },
          },
          series: [
            {
              name: "Pressure",
              type: "gauge",
              min: 0,
              max: 20,
              splitNumber: 5,
              startAngle: 190,
              endAngle: -10,
              progress: {
                show: true,
                width: 8,
                roundCap: true,
                itemStyle: {
                  color: {
                    type: "linear",
                    x: 0,
                    y: 1,
                    x2: 1,
                    y2: 1,
                    colorStops: [
                      {
                        offset: 0,
                        color: "#4ed6b3", // 0% 处的颜色
                      },
                      {
                        offset: 1,
                        color: "#b2df6b", // 100% 处的颜色
                      },
                    ],
                  },
                },
              },
              center: ["50%", "50%"],
              radius: "100%",
              detail: {
                valueAnimation: true,
                formatter: "{value}",
              },
              axisLine: {
                roundCap: true,
                lineStyle: {
                  width: 8,
                  color: [[1, "#001247"]],
                },
              },
              splitLine: {
                show: true,
                length: 5,
                distance: 5,
                lineStyle: {
                  width: 1,
                  color: "#fff",
                },
              },
              axisTick: {
                show: true,
                splitNumber: 2,
                length: 3,
                distance: 5,
                lineStyle: {
                  width: 1,
                  color: "#fff",
                },
              },
              axisLabel: {
                show: true,
                color: "#fff",
              },
              pointer: {
                show: false,
              },
              data: [
                {
                  value: 12.5,
                  name: "m/s",
                  title: {
                    offsetCenter: [0, 0],
                    color: "#9fdfdf",
                    fontSize: 15,
                  },
                  detail: {
                    offsetCenter: [0, -20],
                    color: "#9fdfdf",
                    fontSize: 22,
                  },
                },
              ],
            },
          ],
        };
  
        option && myChart.setOption(option);
      },
      drawBlade3Chart() {
          var chartDom = document.getElementById("blade3Chart");
        var myChart = echarts.init(chartDom);
        var option;
  
        option = {
          tooltip: {
            formatter: "{a} <br/>{b} : {c}%",
          },
          title: {
            text: "全场风速",
            left: "42%",
            top: "60%",
            textStyle: {
              color: "#9fdfdf",
              fontSize: 14,
            },
          },
          series: [
            {
              name: "Pressure",
              type: "gauge",
              min: 0,
              max: 20,
              splitNumber: 5,
              startAngle: 190,
              endAngle: -10,
              progress: {
                show: true,
                width: 8,
                roundCap: true,
                itemStyle: {
                  color: {
                    type: "linear",
                    x: 0,
                    y: 1,
                    x2: 1,
                    y2: 1,
                    colorStops: [
                      {
                        offset: 0,
                        color: "#4ed6b3", // 0% 处的颜色
                      },
                      {
                        offset: 1,
                        color: "#b2df6b", // 100% 处的颜色
                      },
                    ],
                  },
                },
              },
              center: ["50%", "50%"],
              radius: "100%",
              detail: {
                valueAnimation: true,
                formatter: "{value}",
              },
              axisLine: {
                roundCap: true,
                lineStyle: {
                  width: 8,
                  color: [[1, "#001247"]],
                },
              },
              splitLine: {
                show: true,
                length: 5,
                distance: 5,
                lineStyle: {
                  width: 1,
                  color: "#fff",
                },
              },
              axisTick: {
                show: true,
                splitNumber: 2,
                length: 3,
                distance: 5,
                lineStyle: {
                  width: 1,
                  color: "#fff",
                },
              },
              axisLabel: {
                show: true,
                color: "#fff",
              },
              pointer: {
                show: false,
              },
              data: [
                {
                  value: 12.5,
                  name: "m/s",
                  title: {
                    offsetCenter: [0, 0],
                    color: "#9fdfdf",
                    fontSize: 15,
                  },
                  detail: {
                    offsetCenter: [0, -20],
                    color: "#9fdfdf",
                    fontSize: 22,
                  },
                },
              ],
            },
          ],
        };
  
        option && myChart.setOption(option);
      },
    },
};
</script>
   