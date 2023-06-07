<template>
    <CCard>
      <CCardHeader>风机数据</CCardHeader>
      <CCardBody>
        <CListGroup flush>
                <CListGroupItem
                  >风机总数 :
                  {{ dataArr[0] }}</CListGroupItem
                >
                <CListGroupItem
                  >正常风机 :
                  {{ dataArr[1] }}</CListGroupItem
                >
                <CListGroupItem
                  >启动中   :
                  {{ dataArr[2] }}</CListGroupItem
                >
                <CListGroupItem
                  >通讯中断 :
                  {{ dataArr[3] }}</CListGroupItem
                >
                <CListGroupItem
                  >待机等风 :
                  {{ dataArr[4] }}</CListGroupItem
                >
                <CListGroupItem
                  >维护停机 :
                  {{ dataArr[5] }}</CListGroupItem
                >
                <CListGroupItem
                  >故障停机 :
                  {{ dataArr[6] }}</CListGroupItem
                >
              </CListGroup>
      </CCardBody>
    </CCard>
</template>
<script>
import { getFanInfoNum } from "@/api/faninfo.js";

export default {
  name: "FanInfo",
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
      getFanInfoNum(this.farmId)
        .then(response => {
          //正常，限电，故障，检修、通讯中断
          this.dataArr = response.data;
        })
        .catch(error => {
          console.log(error);
        });
    }
  }
};
</script>