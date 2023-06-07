<template>
  <CCol sm="6" md="12">
    <CCard>
      <CCardHeader>风速与功率</CCardHeader>
      <CCardBody>
        <div id="speedAndPowerInfoId" style="width:100%;height:500px"></div>
      </CCardBody>
    </CCard>
  </CCol>
</template>
<script>
import { getShortAndUltraPowerAndSpeedNum } from "@/api/powerInfo.js";

export default {
  name: "SpeedAndPowerChart",
  props: ["farmId", "dateValue"],
  data() {
    return {
      reaWindSpeed: [],
      weatherSpeed: []
    };
  },
  created() {
    this.fetchData();
  },
  methods: {
    fetchData() {
      getShortAndUltraPowerAndSpeedNum({
        windFarmId: this.farmId,
        date: this.dateValue
      })
        .then(response => {
          this.reaWindSpeed = response.data.reaWindSpeed;
          this.weatherSpeed = response.data.weatherSpeed;
          this.realPowerArr = response.data.realPower;
          this.shortPowerArr = response.data.shortPower;
          this.ultraPowerArr = response.data.ultraPower;

          this.createEchart();
        })
        .catch(error => {
          console.log(error);
        });
    },
    createEchart() {
      var myChart = this.$echarts.init(document.getElementById("speedAndPowerInfoId"));

      var option = {
        title: {
          text: "对比图",
          textStyle:{color:'#d0f5f5'},
        },
        tooltip: {
          trigger: "axis"
        },
        //
        legend: {
          data: [
            "预测风速",
            "实际风速",
            "短期预测功率",
            "超短期预测功率",
            "实际功率"
          ],
          textStyle:{color:'#d0f5f5'}
        },
        grid: {
          left: "3%",
          right: "4%",
          bottom: "3%",
          containLabel: true,
          textStyle:{color:'#d0f5f5'}
        },
       
        xAxis: {
          interval: 5,
          type: "category",
          boundaryGap: false,
          textStyle:{color:'#d0f5f5'},
          data: this.createXAxis() 
        },

        yAxis: [
          {
            type: "value",
            postion: "left",
            name: "风速"
          },
          {
            type: "value",
            postion: "right",
            name: "功率"
          }
        ],
        series: [
          {
            name: "预测风速",
            type: "line",
            symbol: "none", //去掉点
            smooth: true, //变平滑
            yAxisIndex: 0,
            data: this.weatherSpeed,
            lineStyle:
            {
               width: 1,
            } 
          },
          {
            name: "实际风速",
            type: "line",
            symbol: "none", //去掉点
            smooth: true, //变平滑
            yAxisIndex: 0,
            lineStyle:
            {
               width: 1,
            },
            data: this.reaWindSpeed 
          },
          {
            name: "短期预测功率",
            type: "line",
            symbol: "none", //去掉点
            smooth: true, //变平滑
            yAxisIndex: 1,
            lineStyle:
            {
               width: 1,
            } ,
            data: this.shortPowerArr 
          },
          {
            name: "超短期预测功率",
            type: "line",
            symbol: "none", //去掉点
            smooth: true, //变平滑
            yAxisIndex: 1,
            lineStyle:
            {
               width: 1,
            } ,
            data: this.ultraPowerArr 
          },
          {
            name: "实际功率",
            type: "line",
            symbol: "none", //去掉点
            smooth: true, //变平滑
            yAxisIndex: 1,
            lineStyle:
            {
               width: 1,
            } ,
            data: this.realPowerArr 
          }
        ]
      };
      // 使用刚指定的配置项和数据显示图表。
      myChart.setOption(option);
      window.onresize = function () {
        myChart.resize();
      }
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
    }
  }
};
</script>