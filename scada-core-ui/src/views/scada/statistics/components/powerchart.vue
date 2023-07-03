<template>
  <div class="card" style="background: #011240; height: 550px">
    <CRow>
      <CCol sm="12" lg="6">
        <div class="card-body" style="color: #9fdfdf">
          <div>功率曲线</div>
        </div>
      </CCol>
      <CCol sm="12" lg="6" align="right">
        <el-date-picker
          value-format="yyyy-MM-dd"
          type="daterange"
          unlink-panels
          range-separator="-"
          start-placeholder="开始日期"
          end-placeholder="结束日期"
          :default-value="[new Date(), new Date()]"
          :picker-options="pickerOptions"
        >
        </el-date-picker>
      </CCol>
    </CRow>
    <CRow>
      <CCol>
        <div id="powerLine" style="width: 100%; height: 500px"></div>
      </CCol>
    </CRow>
  </div>
</template>
              
<script>
import * as echarts from "echarts";
export default {
  name: "PowerChart",
  data() {
    return {};
  },
  props: {
    fanName: String, //风机名称
    fanStatus: String, //风机状态
    alertLevel: String, //警报等级
  },
  mounted() {
    this.drawSvgMap();
  },
  methods: {
    drawSvgMap() {
      var chartDom = document.getElementById("powerLine");
      var myChart = echarts.init(chartDom);
      var option;

      let base = +new Date(2020, 9, 3);
      let oneDay = 24 * 3600 * 1000;
      let date = [];
      let data = [Math.random() * 300];
      for (let i = 1; i < 1000; i++) {
        var now = new Date((base += oneDay));
        date.push(
          [now.getFullYear(), now.getMonth() + 1, now.getDate()].join("/")
        );
        data.push(Math.round((Math.random() - 0.5) * 20 + data[i - 1]));
      }
      option = {
        tooltip: {
          trigger: "axis",
          position: function (pt) {
            return [pt[0], "10%"];
          },
        },
        title: {
          left: "center",
          text: "Large Area Chart",
        },
        toolbox: {
          feature: {
            dataZoom: {
              yAxisIndex: "none",
            },
            restore: {},
            saveAsImage: {},
          },
        },
        xAxis: {
          type: "category",
          boundaryGap: false,
          data: date,
        },
        yAxis: {
          type: "value",
          boundaryGap: [0, "100%"],
        },
        dataZoom: [
          {
            type: "inside",
            start: 0,
            end: 10,
          },
          {
            start: 0,
            end: 10,
          },
        ],
        series: [
          {
            name: "Fake Data",
            type: "line",
            symbol: "none",
            sampling: "lttb",
            smooth: true,
            itemStyle: {
              color: "rgb(255, 70, 131)",
            },   
            data: data,
          },
        ],
      };

      option && myChart.setOption(option);
    },
  },
};
</script>
           