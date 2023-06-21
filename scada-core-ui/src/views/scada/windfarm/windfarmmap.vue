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
          <div id="svgMapChart" style="width: 100%; height: 77vh"></div>
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
                  <div class="card" style="background: #011240;height: 120px;">
                    <div class="card-body" style="color: #9fdfdf;">
                      <div class="small"><CIcon src="../android-icon-36x36.png" style="width: 15px;height: 15px;"/>  总发电量（万kwh）</div>
                      <div class="h1 py-3 text-center">120611.3</div>
                    </div>
                  </div>
                </CCol>
              </CRow>
              <CRow>
                <CCol sm="6" lg="6">
                  <div class="card" style="background: #011240;height: 180px;">
                    <div class="card-body" style="color: #9fdfdf;">
                      <div class="small">日发电量（万kwh）</div>
                      <div class="h1 py-3" style="display:flex;justify-content: center; align-items:center;height: 130px;">5.9</div>
                    </div>
                  </div>
                </CCol>
                <CCol sm="6" lg="6">
                  <CRow>
                    <CCol>
                      <div class="card" style="background: #011240;height: 78px;">
                        <div class="card-body" style="color: #9fdfdf;">
                          <div class="small" style="height: 5px;">月发电量（万kwh）</div>
                          <div class="h4 py-3 text-center">129.7</div>
                        </div>
                      </div>
                    </CCol>
                  </CRow>
                  <CRow>
                    <CCol>
                      <div class="card" style="background: #011240;height: 78px;">
                        <div class="card-body" style="color: #9fdfdf;">
                          <div class="small" style="height: 5px;">年发电量（万kwh）</div>
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
import axios from "axios";
import { getFanInfosByWindFarmId } from "@/api/fan";
import { getFarmId } from "@/utils/auth";
export default {
  name: "WindFarmMap",
  data() {
    return {
      fanData: [], //风机数据
      fanNormalCount: 0, //正常风机数量
      fanInitiatingCount: 0, //启动中风机数量
      fanOfflineCount: 0, //离线风机数量
      fanWaitWindCount: 0, //待风停机风机数量
      fanWaitMaintainCount: 0, //维护停机风机数量
      fanFaultCount: 0, //故障风机数量
      windFarmMapChart: null, //风场地图
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
  created() {
    this.fetchData();
  },

  mounted() {
    this.drawSvgMap();
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
                realData[params.dataIndex].coord_x,
                realData[params.dataIndex].coord_y,
              ])[0],
              y: api.coord([
                realData[params.dataIndex].coord_x,
                realData[params.dataIndex].coord_y,
              ])[1],
            },
          },
          {
            type: "text",
            style: {
              text: realData[params.dataIndex].fan_no,
              x:
                api.coord([
                  realData[params.dataIndex].coord_x,
                  realData[params.dataIndex].coord_y,
                ])[0] + 15,
              y:
                api.coord([
                  realData[params.dataIndex].coord_x,
                  realData[params.dataIndex].coord_y,
                ])[1] + 60,
              fill: "#fff",
              font: "14px Microsoft YaHei",
              backgroundColor: "#000",
            },
          },
          {
            type: "text",
            style: {
              text: "风速:" + realData[params.dataIndex].wind_speed + "m/s",
              x: api.coord([
                realData[params.dataIndex].coord_x,
                realData[params.dataIndex].coord_y,
              ])[0],
              y:
                api.coord([
                  realData[params.dataIndex].coord_x,
                  realData[params.dataIndex].coord_y,
                ])[1] - 15,
              fill: "#fff",
              font: "14px Microsoft YaHei",
              backgroundColor: "#000",
            },
          },
        ],
      };
    },
    fetchData() {
      //获取风机数据
      getFanInfosByWindFarmId(getFarmId())
        .then((response) => {
          this.fanData = response.data;
          //过滤得到不同状态的风机数量
          this.fanNormalCount = response.data.filter((item) => {
            return item.status === 0; //正常
          }).length;
          this.fanInitiatingCount = response.data.filter((item) => {
            return item.status === 1; //启动中
          }).length;
          this.fanOfflineCount = response.data.filter((item) => {
            return item.status === 2; //离线
          }).length;
          this.fanWaitWindCount = response.data.filter((item) => {
            return item.status === 3; //待风
          }).length;
          this.fanWaitMaintainCount = response.data.filter((item) => {
            return item.status === 4; //维护
          }).length;
          this.fanFaultCount = response.data.filter((item) => {
            return item.status === 5; //故障
          }).length;
        })
        .catch((error) => {
          console.log(error);
        });
    },
    //绘制风场地图，包括风机图标
    renderItem(params, api) {
      if (this.fanData[params.dataIndex].status === 0)
        return this.addFanImage(
          "./fan/正常风机.png",
          params,
          api,
          this.fanData
        );
      else if (this.fanData[params.dataIndex].status === 1)
        return this.addFanImage(
          "./fan/启动中风机.png",
          params,
          api,
          this.fanData
        );
      else if (this.fanData[params.dataIndex].status === 2)
        return this.addFanImage(
          "./fan/离线风机.png",
          params,
          api,
          this.fanData
        );
      else if (this.fanData[params.dataIndex].status === 3)
        return this.addFanImage(
          "./fan/待风风机.png",
          params,
          api,
          this.fanData
        );
      else if (this.fanData[params.dataIndex].status === 4)
        return this.addFanImage(
          "./fan/维护风机.png",
          params,
          api,
          this.fanData
        );
      else if (this.fanData[params.dataIndex].status === 5)
        return this.addFanImage(
          "./fan/故障风机.png",
          params,
          api,
          this.fanData
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
              renderItem: this.renderItem, //这里不能使用匿名函数，否则获取不到fanData，具体原有未知
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
  watch: {
    //监听风机数据变化，因为风机数据是异步获取的，所以需要监听数据变化，重新绘制风机图标
    fanData: {
      handler: function () {
        const mapOption = {
          series: [
            {
              data: this.fanData,
            },
          ],
        };
        this.windFarmMapChart.setOption(mapOption);
        window.onresize = function () {
          this.windFarmMapChart.reSize();
        };
      },
    },
  },
};
</script>