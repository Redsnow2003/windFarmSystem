<template>
  <CCol sm="6" md="12">
    <CCard>
      <CCardHeader>气象数据</CCardHeader>
      <CCardBody>
        <div id="speedAndPowerInfoId" style="width:100%;height:500px"></div>
      </CCardBody>
    </CCard>
  </CCol>
</template>
<script>
import {
  getWeatherForecastInfo,
} from "@/api/weatherForecast.js";

export default {
  name: "WeatherForcastChart",
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
      getWeatherForecastInfo({
        windFarmId: this.farmId,
        date: this.dateValue
      })
        .then(response => {
          var dataArr = response.data;
          if (dataArr.length > 0) {
            this.createEchart(response.data);
          } else {
            this.createEchart([]);
          }
          //
        })
        .catch(error => {
          console.log(error);
        });
    },
    createEchart(dataArr) {
      if (!this.myChart) {
        this.myChart = this.$echarts.init(
          document.getElementById("speedAndPowerInfoId")
        );
        window.addEventListener("resize", () => {
          this.myChart.resize();
        });
      }
      this.myChart.clear();

      var legendData = []; //标题数组
      var seriesArr = []; //生成数据
      //获取标题legend,也就是获取层高
      var legendObj = {};
      dataArr.forEach(data => {
        legendObj[data.height + "米"] = "";
      });
      debugger;

      //生成legendData，并且初始化数据为空
      for (var key in legendObj) {
        legendData.push(key);
        seriesArr.push({
          name: key,
          type: "line",
          symbol: "none", //去掉点
          smooth: true, //变平滑
          data: []
        });
      }

      //添加数据
      for (key in legendObj) {
        dataArr.forEach(data => {
          //数据分组
          if (data.height + "米" == key) {
            seriesArr.forEach(ser => {
              if (ser.name == key) ser.data.push(data.windSpeed);
            });
          }
        });
      }

      var option = {
        title: {
          text: "对比图",

          textStyle:{color:'#d0f5f5'}
        },
        tooltip: {
          trigger: "axis"
        },
        //
        legend: {
          data: legendData,
          textStyle:{color:'#d0f5f5'}
        },
        grid: {
          left: "3%",
          right: "4%",
          bottom: "3%",
          containLabel: true
        },
        // toolbox: {
        //   feature: {
        //     saveAsImage: {}
        //   }
        // },
        xAxis: {
          interval: 5,
          type: "category",
          boundaryGap: false,
          // axisLabel: {
          //   show: true,
          //   //interval: 0,
          //   rotate: 360
          // },
          data: this.createXAxis() //[00:00  00:15 00:30 00:45  01:00 01:15]
        },

        yAxis: [
          {
            type: "value",
            postion: "left",
            name: "风速(m/s)"
          }
        ],
        series: seriesArr
      };

      // 使用刚指定的配置项和数据显示图表。
      this.myChart.setOption(option);
      window.onresize = function () {
        this.myChart.resize();
      }
    },
    createLegend() {},
    /**
     * 创建x轴名字
     */
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