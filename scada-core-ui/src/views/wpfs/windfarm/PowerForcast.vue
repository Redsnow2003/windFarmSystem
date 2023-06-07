<template>
  <div>
    <CCard>
      <CCardBody>
        <el-date-picker
          v-model="dateValue"
          value-format="yyyy-MM-dd"
          type="date"
          placeholder="选择日期"
          :default-value="new Date()"
          @change="change"
        ></el-date-picker>
      </CCardBody>
    </CCard>
    <CCard>
      <CCardHeader>风速与功率</CCardHeader>
      <CCardBody>
        <div id="speedAndPowerInfoId" style="width: 100%; height: 500px"></div>
      </CCardBody>
    </CCard>
    <CCard>
      <CCardHeader>数据信息</CCardHeader>
      <CCardBody>
        <CDataTable
          :items="dateFilteredItems"
          :fields="fields"
          :items-per-page="5"
          hover
          pagination
        >
        </CDataTable>
      </CCardBody>
    </CCard>
  </div>
</template>

<script>
import { getShortAndUltraPowerAndSpeedNum } from "@/api/powerInfo.js";
import { getFarmId } from "@/utils/auth";

export default {
  data() {
    return {
      pickerOptions: {
        disabledDate(time) {
          return time.getTime() > Date.now();
        },
      },
      dateValue: "2023-5-30",
      farmId: 0,
      dateFilteredItems: [],
      fields: [
        { key: "short_power", label: "短期预测功率" },
        { key: "ultra_power", label: "超短期预测功率" },
        { key: "real_power", label: "实际功率" },
        { key: "weather_speed", label: "预测风速" },
        { key: "rea_wind_speed", label: "实际风速" },
      ],
    };
  },
  created() {
    //初始化默认值
    this.setFarmId(getFarmId());
    this.fetchData();
  },
  methods: {
    //修改下拉框触发孩子事件
    change(val) {
      this.dateValue = val;

      this.$refs.speedAndPowerDataChild.fetchData({
        farmId: getFarmId(),
        dateValue: this.dateValue,
      });

      this.$refs.speedAndPowerChartChild.fetchData({
        farmId: getFarmId(),
        dateValue: this.dateValue,
      });
    },
    setFarmId(id) {
      this.farmId = id;
    },
    fetchData() {
      getShortAndUltraPowerAndSpeedNum({
        windFarmId: this.farmId,
        date: this.dateValue,
      })
        .then((response) => {
          //根据风厂id和日期查询  短期预测功率、超短期预测功率、实际功率  实际风速、预测风速
          var dateObj = response.data;
          var shortPowerArr = dateObj.short_power;
          var ultraPowerArr = dateObj.ultra_power;
          var realPowerArr = dateObj.real_power;
          var reaWindSpeedArr = dateObj.rea_wind_speed;
          var weatherSpeedArr = dateObj.weather_speed;

          var dataArr = [];
          for (let index = 0; index < shortPowerArr.length; index++) {
            let shortPower = shortPowerArr[index];
            let ultraPower = ultraPowerArr[index];
            let realPower = realPowerArr[index];
            let reaWindSpeed = reaWindSpeedArr[index];
            let weatherSpeed = weatherSpeedArr[index];

            if (
              shortPower == null &&
              ultraPower == null &&
              realPower == null &&
              reaWindSpeed == null &&
              weatherSpeed == null
            )
              continue;

            if (shortPower == null) shortPower = "";
            else shortPower = shortPower + "kW";
            if (ultraPower == null) ultraPower = "";
            else ultraPower = ultraPower + "kW";
            if (realPower == null) realPower = "";
            else realPower = realPower + "kW";
            if (reaWindSpeed == null) reaWindSpeed = "";
            else reaWindSpeed = reaWindSpeed + "m/s";
            if (weatherSpeed == null) weatherSpeed = "";
            else weatherSpeed = weatherSpeed + "m/s";

            dataArr.push({
              short_power: shortPower,
              ultra_power: ultraPower,
              real_power: realPower,
              rea_wind_speed: reaWindSpeed,
              weather_speed: weatherSpeed,
            });
          }
          this.dateFilteredItems = dataArr;
        })
        .catch((error) => {
          console.log(error);
        });
    },
  },
};
</script>