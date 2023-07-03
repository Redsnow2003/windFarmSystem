<template>
    <div class="card" style="background: #011240; height: 550px">
      <div class="card-body" style="color: #9fdfdf">
        <p>电网状况</p>
        <CRow style="height: 20px;"></CRow>
        <CRow>
          <CCol sm="6" lg="6" style="text-align: center">
            <div id="powerChart" style="width: 100%; height: 200px"></div>
          </CCol>
          <CCol sm="6" lg="6" style="text-align: center">
            <div
              id="electricityChart"
              style="width: 100%; height: 200px"
            ></div>
          </CCol>
        </CRow>
        <CRow>
          <CCol sm="6" lg="6" style="text-align: center">
            <div>有功功率：{{ gridInfo.active_power }}kw</div>
          </CCol>
          <CCol sm="6" lg="6" style="text-align: center">
            <div>无功功率：{{ gridInfo.reactive_power }}KVar</div>
          </CCol>
        </CRow>
        <CRow style="height: 50px;"></CRow>
        <CRow>
          <CCol sm="6" lg="6" style="text-align: center">
            <p>U1相绕组电压：{{ gridInfo.crude_voltage1 }}V</p>
            <p>U2相绕组电压：{{ gridInfo.crude_voltage2 }}V</p>
            <p>U2相绕组电压：{{ gridInfo.crude_voltage3 }}V</p>
          </CCol>
          <CCol sm="6" lg="6" style="text-align: center">
            <p>U1相绕组电流：{{ gridInfo.crude_current1 }}V</p>
            <p>U2相绕组电流：{{ gridInfo.crude_current2 }}V</p>
            <p>U3相绕组电流：{{ gridInfo.crude_current3 }}V</p>
          </CCol>
        </CRow>
      </div>
    </div>
  </template>
        
  <script>
  import * as echarts from "echarts";
  import { getFanGridInfo } from "@/api/fan";
  import { getCurrentFanId } from "@/store/fan";
  export default {
    name: "GridStatus",
    data() {
      return {
        gridInfo: {
          id: 1,//电网id
          fan_id: 1,//风机id
          power_factor: 0.00,//功率因数
          energy_frequency: 0.00,//电网频率
          active_power: 0.00,//有功功率
          reactive_power: 0.00,//无功功率
          crude_voltage1: 0.00,//粗电压1
          crude_voltage2: 0.00,//粗电压2
          crude_voltage3: 0.00,//粗电压3
          crude_current1: 0.00,//粗电流1
          crude_current2: 0.00,//粗电流2
          crude_current3: 0.00//粗电流3
        },
      };
    },
    created() {
      this.getGridInfo();
    },
    mounted() {
      this.drawPowerChart();
      this.drawElectricityChart();
    },
    methods: {
      ///////////////////////////////////////////////////
      getGridInfo() {
        getFanGridInfo(getCurrentFanId()).then((res) => {
          if (res.code == 200) {
            console.log(res.data);
            this.gridInfo = res.data;
          }
        })
        .catch((err) => {
          console.log(err);
        });
      },
      drawPowerChart() {
        var chartDom = document.getElementById("powerChart");
        var myChart = echarts.init(chartDom);
        var option;
  
        option = {
          tooltip: {
            formatter: "{a} <br/>{b} : {c}%",
          },
          title: {
            text: "功率因数",
            left: "40%",
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
                  value: this.gridInfo.power_factor,
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
      drawElectricityChart() {
          var chartDom = document.getElementById("electricityChart");
        var myChart = echarts.init(chartDom);
        var option;
  
        option = {
          tooltip: {
            formatter: "{a} <br/>{b} : {c}%",
          },
          title: {
            text: "电能频率",
            left: "40%",
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
              max: 200,
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
                  value: this.gridInfo.energy_frequency,
                  name: "HZ",
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
    watch: {
      gridInfo: {
        handler: function () {
          this.drawPowerChart();
          this.drawElectricityChart();
        },
        deep: true,
      },
    },
  };
  </script>