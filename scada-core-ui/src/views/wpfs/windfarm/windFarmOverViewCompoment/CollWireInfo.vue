<template>
    <CCard >
      <CCardHeader>集电线数据</CCardHeader>
      <CCardBody>
        <CListGroup flush>
                <CListGroupItem
                  >总数 :
                  {{ dataArr[0] }}</CListGroupItem
                >
                <CListGroupItem
                  >正常工作 :
                  {{ dataArr[1] }}</CListGroupItem
                >
                <CListGroupItem
                  >通讯中断   :
                  {{ dataArr[2] }}</CListGroupItem
                >
                <CListGroupItem
                  >故障数量 :
                  {{ dataArr[3] }}</CListGroupItem
                >
              </CListGroup>
      </CCardBody>
    </CCard>
</template>
<script>
import { getCollWireCountInfo } from "@/api/collWireInfo.js";

export default {
  name: "CollWireInfo",
  props:['farmId'],
  data() {
    return {
      dataArr: []
    };
  },
  created() {
    this.fetchData();
  },
  methods: {
    fetchData() {
      getCollWireCountInfo(this.farmId)
        .then(response => {
          //正常工作，通讯中断和故障数量
          this.dataArr = response.data;
        })
        .catch(error => {
          console.log(error);
        });
    }
  }
};
</script>