<template>
  <div class="card" style="background: #011240; height: 550px">
    <CRow >
      <div style="height: 10px;" />
    </CRow>
    <CRow>
      <CCol lg="1">
        <div style="text-align: center;">功率曲线</div>
      </CCol>
      <CCol lg="4">
        <el-date-picker
          style="height: 30px;"
          v-model="dateRange"
          value-format="yyyy-MM-dd"
          type="daterange"
          range-separator="-"
          start-placeholder="开始日期"
          end-placeholder="结束日期"
          :picker-options="pickerOptions"
        >
        </el-date-picker>
      </CCol>
      <CCol lg="71">
        <CButton color="info" style="height: 30px;" @click="getPowerCurve">确定</CButton>
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
import { getFanReferencePowerInfo } from "@/api/fan"; //引入接口
import { getFanPowerCurveInfo } from "@/api/fan"; //引入接口
import { getCurrentFanId } from "@/store/fan";
export default {
  name: "PowerChart",
  data() {
    return {
      referenceCurve: [],
      powerCurve: [],
      dateRange: '',
      pickerOptions: {
          shortcuts: [{
            text: '最近一周',
            onClick(picker) {
              const end = new Date();
              const start = new Date();
              start.setTime(start.getTime() - 3600 * 1000 * 24 * 7);
              picker.$emit('pick', [start, end]);
            }
          }, {
            text: '最近一个月',
            onClick(picker) {
              const end = new Date();
              const start = new Date();
              start.setTime(start.getTime() - 3600 * 1000 * 24 * 30);
              picker.$emit('pick', [start, end]);
            }
          }, {
            text: '最近三个月',
            onClick(picker) {
              const end = new Date();
              const start = new Date();
              start.setTime(start.getTime() - 3600 * 1000 * 24 * 90);
              picker.$emit('pick', [start, end]);
            }
          }]
        },
    };
  },
  created() {
    this.getFanReferencePowerInfo();
    this.drawSvgMap();
  },
  methods: {
    getPowerCurve() {
      getFanPowerCurveInfo(getCurrentFanId(), this.dateRange[0], this.dateRange[1]).then((res) => {
        if(res.data.length == 0) {
          return;
        }
        this.powerCurve = [];
        res.data.forEach((item) => {
          this.powerCurve.push([item.wind_speed , item.power]);
        });
        console.log(this.powerCurve);
      });
    },
    getFanReferencePowerInfo() {
      getFanReferencePowerInfo(getCurrentFanId()).then((res) => {
        this.referenceCurve = [[0, 0]];
        if(res.data.length == 0) {
          return;
        }
        res.data.forEach((item) => {
          this.referenceCurve.push([item.wind_speed / 10, item.power]);
        });
        console.log(this.referenceCurve);
      });
    },
    drawSvgMap() {
      var chartDom = document.getElementById("powerLine");
      var myChart = echarts.init(chartDom);
      var option;
      option = {
        xAxis: {
          splitLine: {
            lineStyle: {
              type: "dashed",
              opacity: 0.2,
            },
          },
        },
        yAxis: {
          splitLine: {
            lineStyle: {
              type: "dashed",
              opacity: 0.2,
            },
          },
        },
        series: [
          {
            name: "scatter",
            type: "scatter",
            data: this.powerCurve,
          },
          {
            name: "line",
            type: "line",
            smooth: true,
            data: this.referenceCurve,
            symbolSize: 0.0,
          },
        ],
      };
      option && myChart.setOption(option);
    },
  },
  watch: {
    powerCurve: function () {
      this.drawSvgMap();
    },
    referenceCurve: function () {
      this.drawSvgMap();
    },
  },
};
</script>

<style>
.el-date-picker.has-sidebar.has-time {
    background: #021948;
    color: #fff;
    border: 1px solid #17397c
}
.el-date-picker__header-label {
    color: #fff;
}
.el-date-table th {
    color: #fff;
}
.el-icon-d-arrow-left:before {
    color: #fff;
}
.el-icon-arrow-left:before {
    color: #fff;
}
.el-icon-arrow-right:before {
    color: #fff;
}
.el-icon-d-arrow-right:before {
    color: #fff;
}
.el-picker-panel__footer {
    background-color: #021948;
    border: 1px solid #17397c
}
.el-picker-panel [slot=sidebar], .el-picker-panel__sidebar {
    background-color: #021948;
    border-right: 1px solid #17397c;
}
.el-picker-panel__shortcut {
    color: #fff;
}
.el-date-picker__time-header {
    border-bottom: 1px solid #17397c;
}
.el-popper[x-placement^=bottom] .popper__arrow::after {
    top: 1px;
    margin-left: -6px;
    border-top-width: 0;
    border-bottom-color: #021948;
}
.el-popper[x-placement^=top] .popper__arrow::after {
    bottom: 1px;
    margin-left: -6px;
    border-top-color: #17397c;
    border-bottom-width: 0;
}
.el-picker-panel {
    background: #021948;
    color: #fff;
}
.el-date-table td.in-range div, .el-date-table td.in-range div:hover, .el-date-table.is-week-mode .el-date-table__row.current div, .el-date-table.is-week-mode .el-date-table__row:hover div {
    background-color: #17397cc9;
}
.el-range-input {
        background-color:#021948;
      }
</style>
```
           