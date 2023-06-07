<template>
    <CCard>
      <CCardHeader>风速对比图</CCardHeader>
      <CCardBody> <div id="speedInfoId" style="width:100%;height:500px"></div></CCardBody>
    </CCard>
</template>
<script>
import { getTodayWindSpeed } from "@/api/reaWindInfo.js";

export default {
  name: "WindSpeed",
  props: ["farmId"],
  data() {
    return {
      reaWindSpeed:[],
      weatherSpeed:[],
    };
  },
  created() {
    this.fetchData();
  },
  methods: {
    fetchData() {
      getTodayWindSpeed({windFarmId:this.farmId,date:'2021-10-29'})
        .then(response => {
          
          this.reaWindSpeed = response.data.real_wind_speed;
          this.weatherSpeed = response.data.weather_wind_speed;
          this.createEchart();
        })
        .catch(error => {
          console.log(error);
        });
    },
    createEchart() {
      var myChart = this.$echarts.init(document.getElementById("speedInfoId"));


      var option = {
        title: {
          text: "风速对比图",
          textStyle:{color:'#d0f5f5'}
        },
        tooltip: {
          trigger: "axis"
        },
        legend: {
          data: ["实测风速", "气象预测风速"],
          textStyle:{color:'#d0f5f5'}
        },
        grid: {
          left: "3%",
          right: "4%",
          bottom: "3%",
          containLabel: true
        },
        
        xAxis: {
          interval:5,
          type: "category",
          boundaryGap: false,
          data: this.createXAxis() 
        },

        yAxis: {
          type: "value"
        },
        series: [
          {
            name: "实测风速",
            type: "line",
            symbol:'none', 
            smooth:true,
            data: this.reaWindSpeed,
            lineStyle:
            {
               width: 1,
            } 
          },
          {
            name: "气象预测风速",
            type: "line",
            symbol:'none', 
            smooth:true,
            data: this.weatherSpeed,
            lineStyle:
            {
               width: 1,
            } 
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