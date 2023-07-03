<template>
  <div class="card" style="background: #011240; height: 300px">
    <div class="card-body" style="color: #9fdfdf">
        
      <CRow style="height: 20px;">
        <CCol sm="1" lg="1">
            <div class="circle"></div>
        </CCol>
        <CCol sm="3" lg="3">
            <div>机械状态</div>
        </CCol>
    </CRow>
    <CRow style="height: 20px;">
    </CRow>
      <CRow>
        <CCol sm="4" lg="4" style="text-align: center">
          <div id="wheelSpeedChart" style="width: 100%; height: 150px"></div>
        </CCol>
        <CCol sm="4" lg="4" style="text-align: center" class="link-right">
          <div
            id="generatorSpeedChart"
            style="width: 100%; height: 150px"
          ></div>
        </CCol>
        <CCol sm="4" lg="4">
            <CRow>
                <CCol sm="6" lg="6">
                    <h5>震动</h5>
                </CCol>
            </CRow>
            <CRow style="height: 20px;" >
            </CRow>
            <CRow>
                <CCol sm="12" lg="12">
                    <div>机舱X：{{ machineInfo.vibrate_x }}g</div>
                    <div>机舱Y：{{ machineInfo.vibrate_y }}g</div>
                    <div>机舱前后：{{ machineInfo.vibrate_fb }}g</div>
                    <div>机舱左右：{{ machineInfo.vibrate_lr }}g</div>
                </CCol>
            </CRow>
        </CCol>
      </CRow>
      <CRow>
        <CCol sm="4" lg="4" style="text-align: center">
            <h5>刹车状态：{{ machineInfo.brake_status }}</h5>
        </CCol>
        <CCol sm="4" lg="4" style="text-align: center">
            <h5>偏航状态：{{ machineInfo.yaw_status }}</h5>
        </CCol>
      </CRow>
    </div>
  </div>
</template>
      
<script>
import * as echarts from "echarts";
import { getFanMachineInfo } from "@/api/fan";
import { getCurrentFanId } from "@/store/fan";
export default {
  name: "MachineStatus",
  data() {
    return {
      machineInfo: {
        id: 1, // id
        fan_id: 1, // 风机id
        wheel_rpm: 0, // 风轮转速
        generator_rpm: 0, // 发电机转速
        brake_status: 'OFF', // 刹车状态
        yaw_status: 'OFF', // 偏航状态
        vibrate_x: 0, // 机舱震动X
        vibrate_y: 0, // 机舱震动Y
        vibrate_lr: 0, // 机舱震动左右
        vibrate_fb: 0, // 机舱震动前后
      },
    };
  },
  created() {
    this.getMachineInfo();
  },
  mounted() {
    this.drawWheelSpeedChart();
    this.drawGeneratorSpeedChart();
  },
  methods: {
    ///////////////////////////////////////////////////
    getMachineInfo() {
      getFanMachineInfo(getCurrentFanId()).then((res) => {
          if (res.code == 200) {
            this.machineInfo = res.data;
          }
        })
        .catch((err) => {
          console.log(err);
        });
    },
    drawWheelSpeedChart() {
      var chartDom = document.getElementById("wheelSpeedChart");
      if (chartDom == null) return;  
      var myChart = echarts.init(chartDom);
      var option;

      option = {
        tooltip: {
          formatter: "{a} <br/>{b} : {c}%",
        },
        title: {
          text: "叶轮转速",
          left: "35%",
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
            max: 25,
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
                value: this.machineInfo.wheel_rpm,
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
    drawGeneratorSpeedChart() {
      var chartDom = document.getElementById("generatorSpeedChart");
      if (chartDom == null) return;
      var myChart = echarts.init(chartDom);
      var option;

      option = {
        tooltip: {
          formatter: "{a} <br/>{b} : {c}%",
        },
        title: {
          text: "发电机转速",
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
            max: 2500,
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
              show: false,
              color: "#fff",
            },
            pointer: {
              show: false,
            },
            data: [
              {
                value: this.machineInfo.generator_rpm,
                name: "pcs",
                title: {
                  offsetCenter: [0, 0],
                  color: "#9fdfdf",
                  fontSize: 15,
                },
                detail: {
                  offsetCenter: [0, -20],
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
    machineInfo: {
      handler: function () {
        this.drawWheelSpeedChart();
        this.drawGeneratorSpeedChart();
      },
      deep: true,
    },
  },
};
</script>