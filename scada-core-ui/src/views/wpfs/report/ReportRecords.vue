<template>
  <div>
    <CCard>
      <CCardBody>
        <CRow>
          <CCol sm="5" lg="2">
            <el-date-picker
              v-model="queryDate"
              type="date"
              placeholder="选择日期"
              :default-value="new Date()"
            >
            </el-date-picker>
          </CCol>
          <CCol sm="2" lg="1">
            <CButton color="light" v-on:click="queryData">查询</CButton>
          </CCol>
        </CRow>
      </CCardBody>
    </CCard>
    <CRow>
      <CCol>
        <CDataTable
          :items="dataReport"
          :fields="fields"
          :items-per-page="16"
          hover
          sorter
          pagination
        >
          <template #method="{ item }">
            <td v-if="item.method === false">自动</td>
            <td v-else-if="item.method === true">手动</td>
          </template>
          <template #backStatus="{ item }">
            <td v-if="item.backStatus === true" style="color: green">成功</td>
            <td v-else-if="item.backStatus === false" style="color: red">
              失败
            </td>
          </template>
        </CDataTable>
      </CCol>
    </CRow>
  </div>
</template>

<script>
import { getReportInfo } from "@/api/report";
import { getFarmId } from "@/utils/auth";
export default {
  name: "reportRecordsQuery",
  data() {
    return {
      fields: [
        { key: "time", label: "时间" },
        { key: "fileName", label: "文件名" },
        { key: "fileType", label: "文件类型" },
        { key: "sectionType", label: "sectionType" },
        { key: "method", label: "上报方式" },
        { key: "backStatus", label: "上报状态" },
        { key: "host", label: "上报主机" },
      ],
      dataReport: [],
      farmId: null,
      queryDate: "2021-08-04", //new Date(),
    };
  },
  created() {

    this.setFarmId(getFarmId());
    this.fetchData();
  },
  methods: {
    setFarmId(id) {
      this.farmId = id;
    },
    fetchData() {
      getReportInfo({
        windFarmId: this.farmId,
        date: this.parseDate(this.queryDate),
      })
        .then((response) => {
          this.dataReport = response.data;
          console.log(response.data);
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

    queryData: function () {
      this.fetchData();
    },
  },
};
</script>