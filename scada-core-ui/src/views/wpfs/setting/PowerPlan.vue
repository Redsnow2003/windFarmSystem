<template>
  <div>
    <CCard>
      <CCardBody>
        <div id="powerCharts" style="width: 100%; height: 300px"></div>
      </CCardBody>
    </CCard>
    <CCard>
      <CCardBody>
        <CRow>
          <CCol sm="5" lg="2">
            <el-date-picker
              v-model="dataDate"
              value-format="yyyy-MM-dd"
              type="date"
              placeholder="选择日期"
              @change="changeDate"
            >
            </el-date-picker>
          </CCol>
          <CCol sm="2" lg="1">
            <CButton color="light" v-on:click="updateData">更新计划</CButton>
          </CCol>
        </CRow>
      </CCardBody>
    </CCard>
    <CCard>
      <CCardBody>
        <CRow>
          <CCol sm="2" lg="1" v-for="x in 12" :key="x">
            <div
              class="input-group input-group-sm mb-3"
              v-for="y in 8"
              :key="y"
            >
              <div class="input-group-prepend">
                <span class="input-group-text" id="inputGroup-sizing-sm">{{
                  timeArray[(x - 1) * 8 + y - 1].time
                }}</span>
              </div>
              <input
                type="number"
                class="form-control"
                @blur="createCharts"
                aria-label="Sizing example input"
                aria-describedby="inputGroup-sizing-sm"
                v-model="timeArray[(x - 1) * 8 + y - 1].power"
              />
            </div>
          </CCol>
        </CRow>
      </CCardBody>
    </CCard>
  </div>
</template>

<script>
import { getPowerPlanInfo } from "@/api/setting";
import { getFarmId } from "@/utils/auth";
export default {
  name: "powerPlan",
  data() {
    return {
      dataDate: new Date(),
      farmId: null,
      tempArrL: [],
      timeArray: [],
    };
  },
  created() {
    this.setFarmId(getFarmId());
    this.createTempArrL();
  },

  mounted() {
    this.fetchData();
  },

  methods: {
    changeDate(val) {
      this.dataDate = val;
      this.fetchData();
    },

    fetchData() {
      getPowerPlanInfo({
        windFarmId: this.farmId,
        date: this.parseDate(this.dataDate),
      })
        .then((response) => {
          if (response.data == null) this.tempArrL = [];
          else {
            response.data.forEach((data) => {
              var te = {};
              te.index = data.timeInterval;
              te.value = data.power;
              this.tempArrL.push(te);
            });
            console.log(this.tempArrL);
          }
          this.createTempArrL();
          this.createCharts();
        })
        .catch((error) => {
          console.log(error);
        });
    },

    parseDate(date) {
      let date1 = new Date(date);
      let year = date1.getFullYear();
      let month = date1.getMonth() + 1;
      let day = date1.getDate();
      return year + "-" + month + "-" + day;
    },

    createTempArrL() {
      if (this.tempArrL.length == 0) {
        for (var i = 1; i < 97; i++) {
          var te = {};
          te.index = i;
          te.value = 36;
          this.tempArrL.push(te);
        }
      }
      if (this.timeArray.length == 0) {
        this.tempArrL.forEach((data) => {
          var Num = parseFloat(data.index / 4);
          var result = "";
          //整数部分
          var a = Math.floor(Num);
          //余数部分
          var b = parseInt(data.index % 4);
          //返回整数+";"+ 余数
          if (b > 0) result = a + ":" + b * 15;
          else result = a + ":00";
          var temp = { time: "", power: 0 };
          temp.time = result;
          temp.power = data.value;
          this.timeArray.push(temp);
        });
      } else {
        this.tempArrL.forEach((data) => {
          this.timeArray[data.index - 1].power = data.value;
        });
      }
    },
    updateData() {
      this.createCharts();
    },

    setFarmId(id) {
      this.farmId = id;
    },
    createCharts() {
      let newPromise = new Promise((resolve) => {
        resolve();
      });
      //然后异步执行echarts的初始化函数
      newPromise.then(() => {
        //	此dom为echarts图标展示dom
        var myChart = this.$echarts.init(
          document.getElementById("powerCharts")
        );
        var axisLable = [];
        var seriesValue1 = [];

        this.timeArray.forEach((element) => {
          axisLable.push(element.time);
          seriesValue1.push(element.power);
        });
        var option = {
          title: {
            text: "计划功率",
            textStyle:{color:'#d0f5f5'}
          },
          tooltip: {
            trigger: "axis",
          },
          barMaxWidth: 50,
          calculable: true,
          xAxis: [
            {
              type: "category",
              data: axisLable,
            },
          ],
          yAxis: [
            {
              type: "value",
            },
          ],
          series: [
            {
              name: "功率曲线",
              type: "line",
              symbol: "none", //去掉点
              smooth: true, //变平滑
              color: "red",
              data: seriesValue1,
            },
          ],
        };
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
        window.onresize = function () {
          myChart.resize();
        }
      });
    },
  },
};
</script>