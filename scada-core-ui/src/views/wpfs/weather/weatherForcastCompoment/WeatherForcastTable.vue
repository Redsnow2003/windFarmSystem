<template>
  <CCol sm="6" md="12">
    <CCard>
      <CCardHeader>气象数据信息</CCardHeader>
      <CCardBody>
        <CDataTable
          :items="dateFilteredItems"
          :fields="fields"
          :items-per-page="5"
          hover
          pagination
        >
          <!-- <template #shortRate="{item}">
            <td>{{item.shortRate.toString()+'%'}}</td>
          </template>
          <template #ultraRate="{item}">
            <td>{{item.ultraRate.toString()+'%'}}</td>
          </template>
          <template #uploadRate="{item}">
            <td>{{item.uploadRate.toString()+'%'}}</td>
          </template>-->
        </CDataTable>
      </CCardBody>
    </CCard>
  </CCol>
</template>
<script>
import { getWeatherForecastInfo } from "@/api/weatherForecast.js";

export default {
  name: "WeatherForcastTable",
  props: ["farmId", "dateValue"],
  data() {
    return {
      fields: [
        { key: "height", label: "层高" },
        { key: "airDensity", label: "空气密度" },
        { key: "atmosphere", label: "大气压" },
        { key: "humidity", label: "湿度" },
        { key: "temperature", label: "温度" },
       
        { key: "windDirection", label: "风向" },
        { key: "windSpeed", label: "风速" },
         { key: "time", label: "时间" }
      ],
      dateFilteredItems: []
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
          //根据风厂id和日期查询  短期预测功率、超短期预测功率、实际功率  实际风速、预测风速
          this.dateFilteredItems=[];
          var dataArr = response.data;
          if (dataArr.length > 0) {
            this.dateFilteredItems = dataArr;
          }
        })
        .catch(error => {
          console.log(error);
        });
    }
  }
};
</script>