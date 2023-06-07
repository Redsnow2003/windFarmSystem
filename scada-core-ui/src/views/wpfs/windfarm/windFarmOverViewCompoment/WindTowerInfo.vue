<template>
    <CCard>
      <CCardHeader>测风塔数据</CCardHeader>
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
import { getTowerCountInfo } from "@/api/windTowerInfo.js";

export default {
  name: "WindTowerInfo",
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
      getTowerCountInfo(this.farmId)
        .then(response => {
          //正常工作，故障数量
          this.dataArr = response.data;
        })
        .catch(error => {
          console.log(error);
        });
    }
  }
};
</script>