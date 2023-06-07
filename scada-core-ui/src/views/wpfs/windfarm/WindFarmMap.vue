<template>
  <CRow>
    <CCol sm="10" lg="10">
      <CCard>
        <CCardBody>
          <div id="svgMapChart" style="width: 100%; height: 83vh"></div>
        </CCardBody>
      </CCard>
    </CCol>
    <CCol sm="2" lg="2">
      <CCard>
        <div id="testEcharts" style="width: 100%; height: 87vh">
          <CCardHeader>风场数据</CCardHeader>
          <CCardBody>
            <CCard>
              <CListGroup flush>
                <CListGroupItem
                  ><img src="fan/正常风机.png" />风机总数 :
                  {{ fanData.length }}</CListGroupItem
                >
                <CListGroupItem
                  ><img src="fan/正常风机.png" />正常风机 :
                  {{ fanNormalCount }}</CListGroupItem
                >
                <CListGroupItem
                  ><img src="fan/启动中风机.png" />启动中 :
                  {{ fanInitiatingCount }}</CListGroupItem
                >
                <CListGroupItem
                  ><img src="fan/离线风机.png" />通讯中断 :
                  {{ fanOfflineCount }}</CListGroupItem
                >
                <CListGroupItem
                  ><img src="fan/待风风机.png" />待机等风 :
                  {{ fanWaitWindCount }}</CListGroupItem
                >
                <CListGroupItem
                  ><img src="fan/维护风机.png" />维护停机 :
                  {{ fanWaitMaintainCount }}</CListGroupItem
                >
                <CListGroupItem
                  ><img src="fan/故障风机.png" />故障停机 :
                  {{ fanFaultCount }}</CListGroupItem
                >
              </CListGroup>
            </CCard>
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
import { getFanInfosByWindFarmId } from "@/api/faninfo";
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
    };
  },
  created() {
    this.fetchData();
  },

  mounted() {
    this.drawSvgMap();
  },
  methods: {
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
              text: "风速:"+realData[params.dataIndex].wind_speed+"m/s",
              x:
                api.coord([
                  realData[params.dataIndex].coord_x,
                  realData[params.dataIndex].coord_y,
                ])[0],
              y:
                api.coord([
                  realData[params.dataIndex].coord_x,
                  realData[params.dataIndex].coord_y,
                ])[1] -15,
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