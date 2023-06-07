<template>
  <CCol sm="6" md="12">
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
  </CCol>
</template>
<script>
import { getShortAndUltraPowerAndSpeedNum } from "@/api/powerInfo.js";

export default {
  name: "SpeedAndPowerData",
  props: ["farmId", "dateValue"],
  data() {
    return {
      fields: [
        { key: "shortPower", label: "短期预测功率" },
        { key: "ultraPower", label: "超短期预测功率" },
        { key: "realPower", label: "实际功率" },
        { key: "weatherSpeed", label: "预测风速" },
        { key: "reaWindSpeed", label: "实际风速" },
      ],
      dateFilteredItems: [],
    };
  },
  created() {
    this.fetchData();
  },
  methods: {
    fetchData() {
      console.log(this.dateValue);

      getShortAndUltraPowerAndSpeedNum({
        windFarmId: this.farmId,
        date: this.dateValue,
      })
        .then((response) => {
          //根据风厂id和日期查询  短期预测功率、超短期预测功率、实际功率  实际风速、预测风速

          var dateObj = response.data;
          var shortPowerArr = dateObj.shortPower;
          var ultraPowerArr = dateObj.ultraPower;
          var realPowerArr = dateObj.realPower;
          var reaWindSpeedArr = dateObj.reaWindSpeed;
          var weatherSpeedArr = dateObj.weatherSpeed;

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
              shortPower: shortPower,
              ultraPower: ultraPower,
              realPower: realPower,
              reaWindSpeed: reaWindSpeed,
              weatherSpeed: weatherSpeed,
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