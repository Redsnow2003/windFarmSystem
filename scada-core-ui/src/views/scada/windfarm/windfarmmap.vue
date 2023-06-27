<template>
  <CRow>
    <CCol sm="8" lg="8">
      <CCard>
        <CCardHeader>
          <CButtonGroup role="group" aria-label="Basic mixed styles example">
            <CButton
              color="light"
              :variant="checkStatus.all"
              @click="changeStatus('all')"
              >全部风机({{ fanList.length }})</CButton
            >
            <CButton
              color="success"
              :variant="checkStatus.normal"
              @click="changeStatus('normal')"
              >正常风机({{ fanCount[0] }})</CButton
            >
            <CButton
              color="primary"
              :variant="checkStatus.initiating"
              @click="changeStatus('initiating')"
              >启动中...({{ fanCount[1] }})</CButton
            >
            <CButton
              color="secondary"
              :variant="checkStatus.offline"
              @click="changeStatus('offline')"
              >通讯中断({{ fanCount[2] }})</CButton
            >
            <CButton
              color="info"
              :variant="checkStatus.waitWind"
              @click="changeStatus('waitWind')"
              >待机等风({{ fanCount[3] }})</CButton
            >
            <CButton
              color="warning"
              :variant="checkStatus.waitMaintain"
              @click="changeStatus('waitMaintain')"
              >维护停机({{ fanCount[4] }})</CButton
            >
            <CButton
              color="danger"
              :variant="checkStatus.fault"
              @click="changeStatus('fault')"
              >故障停机({{ fanCount[5] }})</CButton
            >
          </CButtonGroup>
        </CCardHeader>
        <CCardBody>
          <div id="svgMapChart" style="width: 100%; height: 77vh"></div>
        </CCardBody>
      </CCard>
    </CCol>
    <CCol sm="4" lg="4">
      <CCard>
        <div style="width: 100%; height: 88vh">
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
                  <div class="card" style="background: #031649; height: 170px">
                    <div class="card-body" style="color: #9fdfdf">
                      <div class="small">
                        <CIcon
                          src="../android-icon-36x36.png"
                          style="width: 15px; height: 15px"
                        />
                        总发电量（万kwh）
                      </div>
                      <div class="h1 py-3 text-center" style="
                          display: flex;
                          justify-content: center;
                          align-items: center;
                          height: 110px;
                        ">{{ windFarmInfo.total_electric }}</div>
                    </div>
                  </div>
                </CCol>
              </CRow>
              <CRow>
                <CCol sm="6" lg="6">
                  <div class="card" style="background: #031649; height: 220px">
                    <div class="card-body" style="color: #9fdfdf">
                      <div class="small">日发电量（万kwh）</div>
                      <div
                        class="h1 py-3"
                        style="
                          display: flex;
                          justify-content: center;
                          align-items: center;
                          height: 180px;
                        "
                      >
                        {{ windFarmInfo.day_electric }}
                      </div>
                    </div>
                  </div>
                </CCol>
                <CCol sm="6" lg="6">
                  <CRow>
                    <CCol>
                      <div
                        class="card"
                        style="background: #031649; height: 100px"
                      >
                        <div class="card-body" style="color: #9fdfdf">
                          <div class="small" style="height: 5px">
                            月发电量（万kwh）
                          </div>
                          <div class="h4 py-3 text-center" style="
                          display: flex;
                          justify-content: center;
                          align-items: center;
                          height: 80px;
                        ">{{ windFarmInfo.month_electric }}</div>
                        </div>
                      </div>
                    </CCol>
                  </CRow>
                  <CRow>
                    <CCol>
                      <div
                        class="card"
                        style="background: #031649; height: 100px"
                      >
                        <div class="card-body" style="color: #9fdfdf">
                          <div class="small" style="height: 5px">
                            年发电量（万kwh）
                          </div>
                          <div class="h4 py-3 text-center" style="
                          display: flex;
                          justify-content: center;
                          align-items: center;
                          height: 80px;
                        ">{{ windFarmInfo.year_electric }}</div>
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
import axios from "axios";
import { getWindFarmInfo } from "@/api/windfarm";
import { getFanList } from "@/api/fan";
export default {
  name: "WindFarmMap",
  data() {
    return {
      checkStatus: { // 风机状态选择按钮
        all: "_",
        normal: "outline",
        initiating: "outline",
        offline: "outline",
        waitWind: "outline",
        waitMaintain: "outline",
        fault: "outline",
      },
      fanList: {},//风机列表
      fanCount:[0,0,0,0,0,0],//风机数量
      fanFliter: [], //风机状态过滤
      windFarmMapChart: null, //风场地图
      windFarmInfo: {
        id: 0, //风场id
        name: "", //风场名称
        wind_speed: 0, //风速
        active_power: 0, //有功功率
        reactive_power: 0, //无功功率
        total_electric: 0, // 总发电量
        day_electric: 0, // 日发电量
        month_electric: 0, // 月发电量
        year_electric: 0, // 年发电量
      }, //风场信息
      fanStatus: {
        0: "正常风机",
        1: "启动中风机",
        2: "离线风机",
        3: "待风风机",
        4: "维护风机",
        5: "故障风机",
      },
    };
  },
  created() {
    this.fetchData();
  },

  mounted() {
    this.$nextTick(() => {
      this.drawSvgMap();
      this.drawWindSpeedChart();
      this.drawActivePowerChart();
      this.drawReactivePowerChart();
    });
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
      switch (status) {
        case "all":
          this.fanFliter = this.fanList;
          break;
        case "normal":
        this.fanFliter = this.fanList.filter((fan) => fan.status == 0);
          break;
        case "initiating":
        this.fanFliter = this.fanList.filter((fan) => fan.status == 1);
          break;
        case "offline":
        this.fanFliter = this.fanList.filter((fan) => fan.status == 2);
          break;
        case "waitWind":
        this.fanFliter = this.fanList.filter((fan) => fan.status == 3);
          break;
        case "waitMaintain":
        this.fanFliter = this.fanList.filter((fan) => fan.status == 4);
          break;
        case "fault":
        this.fanFliter = this.fanList.filter((fan) => fan.status == 5);
          break;
      }
    },
    //地图上添加风机图标
    addFanImage(url, params, api, realData) {
      return {
        type: "group",
        children: [
          {
            type: "image",
            style: {
              image: url,
              x: api.coord([
                realData[params.dataIndex].lng,
                realData[params.dataIndex].lat,
              ])[0],
              y: api.coord([
                realData[params.dataIndex].lng,
                realData[params.dataIndex].lat,
              ])[1],
            },
          },
          {
            type: "text",
            style: {
              text: realData[params.dataIndex].name,
              x:
                api.coord([
                  realData[params.dataIndex].lng,
                  realData[params.dataIndex].lat,
                ])[0] + 15,
              y:
                api.coord([
                  realData[params.dataIndex].lng,
                  realData[params.dataIndex].lat,
                ])[1] + 60,
              fill: "#fff",
              font: "10px Microsoft YaHei",
              backgroundColor: "#000",
            },
          },
          {
            type: "text",
            style: {
              text: realData[params.dataIndex].wind_speed + "m/s",
              x: api.coord([
                realData[params.dataIndex].lng,
                realData[params.dataIndex].lat,
              ])[0],
              y:
                api.coord([
                  realData[params.dataIndex].lng,
                  realData[params.dataIndex].lat,
                ])[1] - 15,
              fill: "#fff",
              font: "10px Microsoft YaHei",
              backgroundColor: "#000",
            },
          },
        ],
      };
    },
    fetchData() {
      this.getWindFarmInfo()
      this.getFanList()
    },
    getWindFarmInfo() {
      getWindFarmInfo().then((res) => {
        this.windFarmInfo = res.data;
      });
    },
    getFanList() {
      getFanList().then((res) => {
        this.fanList = res.data;
        this.fanFliter = this.fanList;
        for(var i=0; i<6; i++) {
          this.fanCount[i] = this.fanList.filter((fan) => fan.status == i).length
        }
      });
    },
    //绘制风场地图，包括风机图标
    renderItem(params, api) {
      return this.addFanImage(
          `./fan/${this.fanStatus[this.fanFliter[params.dataIndex].status]}.png`,
          params,
          api,
          this.fanFliter
        );
    },
    ///////////////////////////////////////////////////
    //绘制风场地图
    drawSvgMap() {
      axios.get("./json/map/windfarm.json", {}).then((response) => {
        const mapJson = response.data;
        //初始化地图
        this.windFarmMapChart = echarts.init(
          document.getElementById("svgMapChart")
        );
        //注册地图
        echarts.registerMap("windfarm", mapJson);
        //地图配置信息
        const mapOption = {
          geo: {
            map: "windfarm", //地图名称
            roam: true, //开启鼠标缩放和漫游
            zoom: 1, //地图缩放级别
            selectedMode: false, //选中模式：single | multiple
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            layoutCenter: ["50%", "50%"], //设置后left/right/top/bottom等属性无效
            layoutSize: "98%",
            label: {
              show: true,
              position: "inside",
              color: "#43d0d6",
            },
            itemStyle: {
              normal: {
                areaColor: "#101f32",
                borderWidth: 1.1,
                borderColor: "#43d0d6",
              },
              emphasis: {
                show: false,
                areaColor: "#069",
              },
            },
          },
          //风机图标
          series: [
            {
              name: "fanInfos",
              type: "custom", //自定义系列
              coordinateSystem: "geo", //使用地理坐标系
              renderItem: this.renderItem, //渲染风机图标
            },
          ],
        };
        this.windFarmMapChart.setOption(mapOption);
        window.onresize = function () {
          this.windFarmMapChart.reSize();
        };
      });
    },
     ///////////////////////////////////////////////////
     drawWindSpeedChart() {
      var chartDom = document.getElementById("windSpeedChart");
      if(chartDom == null) return
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
                value: this.windFarmInfo.wind_speed,
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
      if(chartDom == null) return
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
                value: this.windFarmInfo.active_power,
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
      if(chartDom == null) return
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
                value: this.windFarmInfo.reactive_power,
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
  watch: {
    windFarmInfo: {
      handler: function () {
        this.drawSvgMap();
        this.drawWindSpeedChart();
        this.drawActivePowerChart();
        this.drawReactivePowerChart();
      },
      deep: true,
    },
    fanFliter: {
      handler: function () {
        const mapOption = {
          series: [
            {
              data: this.fanFliter,
            },
          ],
        };
        this.windFarmMapChart.setOption(mapOption);
        window.onresize = function () {
          this.windFarmMapChart.reSize();
        };
      },
      deep: true,
    },
  },
};
</script>