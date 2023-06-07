<template>
  <CRow>
    <CCol sm="8" lg="8">
      <CCard style="width: 100%; height: 88vh">
        <CCardHeader>
          <CButtonGroup role="group" aria-label="Basic mixed styles example">
            <CButton
              color="light"
              :variant="checkStatus.all"
              @click="changeStatus('all')"
              >全部风机</CButton
            >
            <CButton
              color="success"
              :variant="checkStatus.normal"
              @click="changeStatus('normal')"
              >正常风机</CButton
            >
            <CButton
              color="primary"
              :variant="checkStatus.initiating"
              @click="changeStatus('initiating')"
              >启动中...</CButton
            >
            <CButton
              color="secondary"
              :variant="checkStatus.offline"
              @click="changeStatus('offline')"
              >通讯中断</CButton
            >
            <CButton
              color="info"
              :variant="checkStatus.waitWind"
              @click="changeStatus('waitWind')"
              >待机等风</CButton
            >
            <CButton
              color="warning"
              :variant="checkStatus.waitMaintain"
              @click="changeStatus('waitMaintain')"
              >维护停机</CButton
            >
            <CButton
              color="danger"
              :variant="checkStatus.fault"
              @click="changeStatus('fault')"
              >故障停机</CButton
            >
          </CButtonGroup>
        </CCardHeader>
        <CCardBody>
          <CContainer>
            <CRow>
              <CCol>
                <FanWidget />
              </CCol>
              <CCol>
                <FanWidget />
              </CCol>
              <CCol>
                <FanWidget />
              </CCol>
              <CCol>
                <FanWidget />
              </CCol>
              <CCol>
                <FanWidget />
              </CCol>
            </CRow>
            <CRow>
              <CCol>
                <FanWidget />
              </CCol>
              <CCol>
                <FanWidget />
              </CCol>
              <CCol>
                <FanWidget />
              </CCol>
              <CCol>
                <FanWidget />
              </CCol>
              <CCol>
                <FanWidget />
              </CCol>
            </CRow>
          </CContainer>
        </CCardBody>
      </CCard>
    </CCol>
    <CCol sm="4" lg="4">
      <CCard>
        <div style="width: 100%; height: 88vh">
          <CCardHeader>
            <div style="font-size: 24px; color: #4f87d1">风场数据</div>
          </CCardHeader>
          <CCardBody>
            <div style="align-items: center">
              <CRow>
                <CCol sm="12" lg="12">
                  <div
                    id="windSpeedChart"
                    style="width: 100%; height: 250px"
                  ></div>
                </CCol>
              </CRow>
              <CRow>
                <CCol sm="6" lg="6">
                  <div id="powerActiveChart" style="width: 100%; height: 150px">
                    有功功率
                  </div>
                </CCol>
                <CCol sm="6" lg="6">
                  <div
                    id="powerReactiveChart"
                    style="width: 100%; height: 150px"
                  >
                    无功功率
                  </div>
                </CCol>
              </CRow>
              <CRow>
                <CCol sm="12" lg="12">
                  <div class="card" style="background: #031649; height: 120px">
                    <div class="card-body" style="color: #9fdfdf">
                      <div class="small">
                        <CIcon
                          src="../android-icon-36x36.png"
                          style="width: 15px; height: 15px"
                        />
                        总发电量（万kwh）
                      </div>
                      <div class="h1 py-3 text-center">120611.3</div>
                    </div>
                  </div>
                </CCol>
              </CRow>
              <CRow>
                <CCol sm="6" lg="6">
                  <div class="card" style="background: #031649; height: 180px">
                    <div class="card-body" style="color: #9fdfdf">
                      <div class="small">日发电量（万kwh）</div>
                      <div
                        class="h1 py-3"
                        style="
                          display: flex;
                          justify-content: center;
                          align-items: center;
                          height: 130px;
                        "
                      >
                        5.9
                      </div>
                    </div>
                  </div>
                </CCol>
                <CCol sm="6" lg="6">
                  <CRow>
                    <CCol>
                      <div
                        class="card"
                        style="background: #031649; height: 78px"
                      >
                        <div class="card-body" style="color: #9fdfdf">
                          <div class="small" style="height: 5px">
                            月发电量（万kwh）
                          </div>
                          <div class="h4 py-3 text-center">129.7</div>
                        </div>
                      </div>
                    </CCol>
                  </CRow>
                  <CRow>
                    <CCol>
                      <div
                        class="card"
                        style="background: #031649; height: 78px"
                      >
                        <div class="card-body" style="color: #9fdfdf">
                          <div class="small" style="height: 5px">
                            年发电量（万kwh）
                          </div>
                          <div class="h4 py-3 text-center">1355.7</div>
                        </div>
                      </div>
                    </CCol>
                  </CRow>
                </CCol>
              </CRow>
            </div>
          </CCardBody>
        </div>
      </CCard>
    </CCol>
  </CRow>
</template>
  
  
  <script>
// 引入echarts
import * as echarts from "echarts";
import FanWidget from "../components/fanwidget"; //引入组件
export default {
  name: "WindFarmMap",
  data() {
    return {
      checkStatus: {
        all: "_",
        normal: "outline",
        initiating: "outline",
        offline: "outline",
        waitWind: "outline",
        waitMaintain: "outline",
        fault: "outline",
      },
    };
  },
  components: { FanWidget }, //注册组件
  created() {
    this.fetchData();
  },

  mounted() {
    this.drawWindSpeedChart();
    this.drawActivePowerChart();
    this.drawReactivePowerChart();
  },
  methods: {
    //响应选择风机状态按钮消息
    changeStatus(status) {
      this.checkStatus.all = "outline";
      this.checkStatus.normal = "outline";
      this.checkStatus.initiating = "outline";
      this.checkStatus.offline = "outline";
      this.checkStatus.waitWind = "outline";
      this.checkStatus.waitMaintain = "outline";
      this.checkStatus.fault = "outline";
      this.checkStatus[status] = "_";
    },
    fetchData() {},

    ///////////////////////////////////////////////////
    drawWindSpeedChart() {
      var chartDom = document.getElementById("windSpeedChart");
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
    ///////////////////////////////////////////////////
    drawActivePowerChart() {
      var chartDom = document.getElementById("powerActiveChart");
      var myChart = echarts.init(chartDom);
      var option;
      option = {
        tooltip: {
          formatter: "{a} <br/>{b} : {c}%",
        },
        title: {
          text: "有功功率",
          left: "35%",
          top: "65%",
          textStyle: {
            color: "#9fdfdf",
            fontSize: 12,
          },
        },
        series: [
          {
            name: "Pressure",
            type: "gauge",
            min: 0,
            max: 30,
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
                value: 22.5,
                name: "MW",
                title: {
                  offsetCenter: [0, 5],
                  color: "#9fdfdf",
                  fontSize: 12,
                },
                detail: {
                  offsetCenter: [0, -13],
                  color: "#9fdfdf",
                  fontSize: 18,
                },
              },
            ],
          },
        ],
      };
      option && myChart.setOption(option);
    },
    ///////////////////////////////////////////////////
    drawReactivePowerChart() {
      var chartDom = document.getElementById("powerReactiveChart");
      var myChart = echarts.init(chartDom);
      var option;
      option = {
        tooltip: {
          formatter: "{a} <br/>{b} : {c}%",
        },
        title: {
          text: "无功功率",
          left: "35%",
          top: "65%",
          textStyle: {
            color: "#9fdfdf",
            fontSize: 12,
          },
        },
        series: [
          {
            name: "Pressure",
            type: "gauge",
            min: 0,
            max: 30,
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
                value: 12.9,
                name: "Mvar",
                title: {
                  offsetCenter: [0, 5],
                  color: "#9fdfdf",
                  fontSize: 12,
                },
                detail: {
                  offsetCenter: [0, -13],
                  color: "#9fdfdf",
                  fontSize: 18,
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