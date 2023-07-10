<template>
  <div class="card" style="background: #011240; height: 420px">
    <CRow>
      <CCol>
        <div id="windDirection" style="width: 100%; height: 420px"></div>
      </CCol>
    </CRow>
  </div>
</template>
                
  <script>
import * as echarts from "echarts";
import { getFanWindDirectionInfo } from "@/api/fan"; //引入接口
import { getCurrentFanId } from "@/store/fan";
export default {
  name: "WindDirection",
  data() {
    return {
      directionData: [],
    };
  },
  created() {
    this.getFanWindDirectionInfo();
    this.drawChart();
  },
  methods: {
    getFanWindDirectionInfo() {
      const fanId = getCurrentFanId();
      getFanWindDirectionInfo(fanId).then((res) => {
          if (res.code == 200) {
            this.directionData = [];
            var data = [];
            res.data.forEach(element => {
              data.push(element.percentage);
            });
            data.reverse();
            this.directionData.push(data);
          }
        })
        .catch((err) => {
          console.log(err);
        });
    },
    drawChart() {
      var chartDom = document.getElementById("windDirection");
      if(chartDom == null) return;
      var myChart = echarts.init(chartDom);
      var option;
      option = {
        title: {
          text: "风向统计",
          left: "left",
          textStyle: {
            color: "rgb(48, 153, 117)",
          },
        },
        radar: {
          indicator: [
            { name: "N", max: 100 },
            { name: "", max: 100 },
            { name: "330", max: 100 },
            { name: "", max: 100 },
            { name: "300", max: 100 },
            { name: "", max: 100 },
            { name: "W", max: 100 },
            { name: "", max: 100 },
            { name: "240", max: 100 },
            { name: "", max: 100 },
            { name: "210", max: 100 },
            { name: "", max: 100 },
            { name: "S", max: 100 },
            { name: "", max: 100 },
            { name: "150", max: 100 },
            { name: "", max: 100 },
            { name: "120", max: 100 },
            { name: "", max: 100 },
            { name: "E", max: 100 },
            { name: "", max: 100 },
            { name: "60", max: 100 },
            { name: "", max: 100 },
            { name: "30", max: 100 },
            { name: "", max: 100 },
          ],
          shape: "circle",
          splitNumber: 10,
          axisName: {
            color: "rgb(48, 153, 117)",
          },
          splitLine: {
            show: false,
            lineStyle: {
              color: [
                "rgba(48, 153, 117, 0.1)",
                "rgba(48, 153, 117, 0.2)",
                "rgba(48, 153, 117, 0.3)",
                "rgba(48, 153, 117, 0.4)",
                "rgba(48, 153, 117, 0.5)",
                "rgba(48, 153, 117, 0.6)",
                "rgba(48, 153, 117, 0.7)",
                "rgba(48, 153, 117, 0.8)",
                "rgba(48, 153, 117, 0.9)",
                "rgba(48, 153, 117, 1)",
              ].reverse(),
            },
          },
          splitArea: {
            show: true,
            areaStyle: {
              color: [
                "rgba(48, 153, 117, 0.1)",
                "rgba(48, 153, 117, 0.2)",
                "rgba(48, 153, 117, 0.3)",
                "rgba(48, 153, 117, 0.4)",
                "rgba(48, 153, 117, 0.5)",
                "rgba(48, 153, 117, 0.6)",
                "rgba(48, 153, 117, 0.7)",
                "rgba(48, 153, 117, 0.8)",
                "rgba(48, 153, 117, 0.9)",
                "rgba(48, 153, 117, 1)",
              ].reverse(),
            },
          },
          axisLine: {
            lineStyle: {
              color: "rgba(48, 153, 117, 0.5)",
            },
          },
        },
        series: [
        {
            type: "radar",
            data: this.directionData,
            symbol: "none",
            itemStyle: {
              color: "#F9713C",
            },
            areaStyle: {
              color: "#F9713C",
              opacity: 0.8,
            },
          },
        ],
      };
      option && myChart.setOption(option);
    },
  },
  watch: {
    directionData: function () {
      this.drawChart();
    },
  },
};
</script>
             