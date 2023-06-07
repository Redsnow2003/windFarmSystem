<template>
  <CCard>
    <CCardHeader>功率对比图</CCardHeader>
    <CCardBody>
      <div id="powerInfoId" style="width: 100%; height: 500px"></div>
    </CCardBody>
  </CCard>
</template>


<script>
import { getTodayPowerInfo } from "@/api/powerInfo.js";

export default {
  name: "PowerInfo",
  props: ["farmId"],

  data() {
    return {
      realPower: [],
      shortPower: [],
      ultraPower: [],
      minPower: 10000,
      maxPower: -1000,
    };
  },
  created() {
    this.fetchData();
  },
  methods: {
    fetchData() {
      getTodayPowerInfo({
        windFarmId: this.farmId,
        date: "2021-10-29",
      })
        .then((response) => {
          this.shortPower = response.data.short_power || [];
          this.ultraPower = response.data.ultra_power || [];
          this.realPower = response.data.real_power || [];
          this.getMaxMinPower();
          this.createEchart();
        })
        .catch((error) => {
          console.log(error);
        });
    },
    getMaxMinPower() {
      this.realPower.forEach((data) => {
        if (data != null) {
          if (this.minPower > data) this.minPower = data;
          if (this.maxPower < data) this.maxPower = data;
        }
      });
      this.shortPower.forEach((data) => {
        if (data != null) {
          if (this.minPower > data) this.minPower = data;
          if (this.maxPower < data) this.maxPower = data;
        }
      });
      this.ultraPower.forEach((data) => {
        if (data != null) {
          if (this.minPower > data) this.minPower = data;
          if (this.maxPower < data) this.maxPower = data;
        }
      });
      if (this.minPower >= 0) this.minPower *= 0.9;
      else this.minPower *= 1.1;
      if (this.maxPower >= 0) this.maxPower *= 1.1;
      else this.maxPower *= 0.9;
      this.minPower = Math.round(this.minPower);
      this.maxPower = Math.round(this.maxPower);
    },
    createEchart() {
      var myChart = this.$echarts.init(document.getElementById("powerInfoId"));
      var option = {
        title: {
          text: "功率对比图",
          textStyle: { color: "#d0f5f5" },
        },
        tooltip: {
          trigger: "axis",
        },
        legend: {
          data: ["短期预测功率", "超短期预测功率", "实际功率"],
          textStyle: { color: "#d0f5f5" },
        },
        grid: {
          left: "3%",
          right: "4%",
          bottom: "3%",
          containLabel: true,
        },
        xAxis: {
          type: "category",
          boundaryGap: false,
          data: this.createXAxis(), //[00:00  00:15 00:30 00:45  01:00 01:15]
        },

        yAxis: {
          max: this.maxPower,
          min: this.minPower,
          type: "value",
        },
        series: [
          {
            name: "短期预测功率",
            type: "line",
            symbol: "none", //去掉点
            smooth: true, //变平滑
            data: this.shortPower,
            color: "rgba(255,69,0,1)",
            lineStyle: {
              width: 2,
            },
          },
          {
            name: "超短期预测功率",
            type: "line",
            symbol: "none", //去掉点
            smooth: true, //变平滑
            data: this.ultraPower,
            color: "rgba(128,180,180,1)",
            lineStyle: {
              width: 2,
            },
          },
          {
            name: "实际功率",
            type: "line",
            symbol: "none", //去掉点
            smooth: true, //变平滑
            data: this.realPower,
            color: "rgba(173,255,47,1)",
            lineStyle: {
              width: 2,
            },
          },
        ],
      };
      // 使用刚指定的配置项和数据显示图表。
      myChart.setOption(option);
      window.onresize = function () {
        myChart.resize();
      };
    },
    createXAxis() {
      var dataArr = [];
      var hour = "0";
      var minute = "";
      for (var i = 0; i < 24; i++) {
        if (i < 10) {
          hour = hour + i;
        } else {
          hour = i;
        }
        for (var j = 0; j < 4; j++) {
          minute = j * 15;
          if (minute == 0) minute = "00";
          dataArr.push(hour + ":" + minute);
        }

        if (i < 10) hour = "0";
      }
      return dataArr;
    },
  },
};
</script>