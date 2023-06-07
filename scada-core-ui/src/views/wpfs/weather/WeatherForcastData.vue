<template>
  <div>
    <CCard>
      <CCardHeader>气象数据</CCardHeader>
      <CCardBody>
        <el-date-picker
          v-model="dateValue"
          value-format="yyyy-MM-dd"
          type="date"
          placeholder="选择日期"
          @change="change"
        ></el-date-picker>
        <WeatherForcastChart :farmId="farmId" :dateValue="dateValue" ref="weatherForcastChartChild" />
        <WeatherForcastTable :farmId="farmId" :dateValue="dateValue" ref="weatherForcastTableChild" />
      </CCardBody>
    </CCard>
  </div>
</template>

<script>
import WeatherForcastChart from "./weatherForcastCompoment/WeatherForcastChart";
import WeatherForcastTable from "./weatherForcastCompoment/WeatherForcastTable";

import { getFarmId } from "@/utils/auth";

export default {
  name:"WeatherForcastData",
  data() {
    return {
      pickerOptions: {
        disabledDate(time) {
          return time.getTime() > Date.now();
        }
      },
      dateValue: "2021-08-04",
      farmId: 0
    };
  },
  components: {
    WeatherForcastChart,
    WeatherForcastTable
  },
  created() {
    //初始化默认值
    var date = new Date();
    var month = date.getMonth() + 1;
    if (month < 10) month = 0 + "" + month;
    this.dateValue = '2021-08-04' ;//date.getFullYear() + "-" + month + "-" + date.getDate();

    this.setFarmId(getFarmId());
  },
  methods: {
    //修改下拉框触发孩子事件
    change(val) {
      this.dateValue = val;

      this.$refs.weatherForcastTableChild.fetchData({
        farmId: getFarmId(),
        dateValue: this.dateValue
      });

      this.$refs.weatherForcastChartChild.fetchData({
        farmId: getFarmId(),
        dateValue: this.dateValue
      });
    },
    setFarmId(id) {
      this.farmId = id;
    }
  }
};
</script>