<template>
    <div class="card" style="background: #011240; height: 550px">
      <div class="card-body" style="color: #9fdfdf">
        <p>桨叶信息</p>
        <CRow style="height: 20px;"></CRow>
        <CRow>
          <CCol sm="4" lg="4" style="text-align: center">
            <h3>1号桨叶</h3>
            <h7 :style="{color: statusColor[bladeInfo.blade1_status]}">状态：{{ bladeInfo.blade1_status }}</h7>
          </CCol>
          <CCol sm="8" lg="8" style="text-align: center">
            <div
              id="blade1Chart"
              style="width: 100%; height: 150px"
            ></div>
          </CCol>
        </CRow>
        <CRow>
          <CCol sm="4" lg="4" style="text-align: center">
            <h3>2号桨叶</h3>
            <h7 :style="{color: statusColor[bladeInfo.blade2_status]}">状态：{{ bladeInfo.blade2_status }}</h7>
          </CCol>
          <CCol sm="8" lg="8" style="text-align: center">
            <div
              id="blade2Chart"
              style="width: 100%; height: 150px"
            ></div>
          </CCol>
        </CRow>
        <CRow>
          <CCol sm="4" lg="4" style="text-align: center">
            <h3>3号桨叶</h3>
            <h7 :style="{color: statusColor[bladeInfo.blade3_status]}">状态：{{ bladeInfo.blade3_status }}</h7>
          </CCol>
          <CCol sm="8" lg="8" style="text-align: center">
            <div
              id="blade3Chart"
              style="width: 100%; height: 150px"
            ></div>
          </CCol>
        </CRow>
      </div>
    </div>
  </template>
        
  <script>
  import * as echarts from "echarts";
  import { getFanBladeInfo } from "@/api/fan";
  import { getCurrentFanId } from "@/store/fan";
  export default {
    name: "BladesInfo",
    data() {
      return {
        bladeInfo: {
          id: 1, //桨叶id
          fan_id: 1, //风机id
          blade1_status: "正常", //1号桨叶状态
          blade1_angle: 0, //1号桨叶角度
          blade2_status: "正常", //2号桨叶状态
          blade2_angle: 0, //2号桨叶角度
          blade3_status: "正常", //3号桨叶状态
          blade3_angle: 0, //3号桨叶角度
        },
        statusColor: {
          正常: "#4ed6b3",
          异常: "#ff0000",
        },
      };
    },
    created() {
      this.getBladeInfo();
    },
    mounted() {
      this.drawBlade1Chart()
      this.drawBlade2Chart()
      this.drawBlade3Chart()
    },
    methods: {
      ///////////////////////////////////////////////////
      getBladeInfo() {
        getFanBladeInfo(getCurrentFanId()).then((res) => {
          if (res.code == 200) {
            console.log(res.data);
            this.bladeInfo = res.data;
          }
        })
        .catch((err) => {
          console.log(err);
        });
      },
      drawBlade1Chart() {
        var chartDom = document.getElementById("blade1Chart");
        var myChart = echarts.init(chartDom);
        var option;
  
        option = {
          tooltip: {
            formatter: "{a} <br/>{b} : {c}%",
          },
          title: {
            text: "桨叶1位置",
            left: "30%",
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
              max: 360,
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
                  value: this.bladeInfo.blade1_angle,
                  detail: {
                    offsetCenter: [0, 0],
                    color: "#9fdfdf",
                    fontSize: 17,
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
            text: "桨叶2位置",
            left: "30%",
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
              max: 360,
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
                  value: this.bladeInfo.blade2_angle,
                  detail: {
                    offsetCenter: [0, 0],
                    color: "#9fdfdf",
                    fontSize: 17,
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
            text: "桨叶3位置",
            left: "30%",
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
              max: 360,
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
                  value: this.bladeInfo.blade3_angle,
                  title: {
                    offsetCenter: [0, 0],
                    color: "#9fdfdf",
                    fontSize: 15,
                  },
                  detail: {
                    offsetCenter: [0, 0],
                    color: "#9fdfdf",
                    fontSize: 17,
                  },
                },
              ],
            },
          ],
        };
  
        option && myChart.setOption(option);
      },
    },
    watch: {
      bladeInfo: {
        handler: function () {
          this.drawBlade1Chart();
          this.drawBlade2Chart();
          this.drawBlade3Chart();
        },
        deep: true,
      },
    },
  };
  </script>