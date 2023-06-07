<template>
  <CRow>
    <CCol sm="10" lg="10">
      <CCard>
        <CCardBody>
          <div id="svgMapChart" style="width: 97%; height: 83vh"></div>
        </CCardBody>
      </CCard>
    </CCol>
    <CCol sm="2" lg="2">
      <WindFarmList />
    </CCol>
  </CRow>
</template>


<script>
// 引入echarts
import * as echarts from "echarts";
import { getWindFarmInfoList } from "@/api/windfarminfo";
import WindFarmList from "./WindFarmList";
import axios from "axios";
export default {
  name: "RegionOverview",
  components: {
    WindFarmList,
  },

  data() {
    return {
      dateFilteredItems: [],
      myChart: null,
    };
  },

  created() {
    this.fetchData();
  },
  mounted() {
    this.drawSvgMap();
  },
  methods: {
    fetchData() {
      getWindFarmInfoList()
        .then((response) => {
          this.dateFilteredItems = response.data;
        })
        .catch((error) => {
          console.log(error);
        });
    },

    drawSvgMap() {
      axios.get("./json/map/Region.json", {}).then((response) => {
        const mapJson = response.data;
        this.myChart = echarts.init(document.getElementById("svgMapChart"));

        echarts.registerMap("china", mapJson);
        const mapOption = {
          geo: {
            map: "china",
            roam: true, //开启鼠标缩放和漫游
            zoom: 1.3, //地图缩放级别
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
          series: [
            {
              name: "windfarm",
              type: "scatter",
              coordinateSystem: "geo",
              symbolSize: 8,
              label: {
                show: true,
                position: "outside",
                formatter: function (param) {
                  return param.name;
                },
              },
              itemStyle: {
                normal: {
                  color: "rgb(190,20,20)",
                },
                emphasis: {
                  borderColor: "#101010",
                  borderWidth: 0.1,
                },
              },
            },
          ],
        };

        this.myChart.setOption(mapOption);
        window.onresize = function () {
          this.myChart.resize();
        };
      });
    },
  },
  watch: {
    dateFilteredItems: {
      handler: function () {
        let res = [];
        for (let i = 0; i < this.dateFilteredItems.length; i++) {
          {
            res.push({
              name: this.dateFilteredItems[i].name,
              value: [
                this.dateFilteredItems[i].coord_x,
                this.dateFilteredItems[i].coord_y,
              ],
            });
          }
        }
        const mapOption = {
          series: [
            {
              data: res,
            },
          ],
        };
        this.myChart.setOption(mapOption);
        window.onresize = function () {
          this.myChart.reSize();
        };
      },
    },
  },
};
</script>