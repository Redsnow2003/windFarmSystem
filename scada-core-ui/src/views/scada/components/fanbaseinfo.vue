<template>
  <div class="card" style="background: #011240; height: 300px">
    <div class="card-body">
      <p :style="{color: fanStatus[fanInfo.status].color}">{{ fanStatus[fanInfo.status].name }}</p>
      <CRow style="height: 40px"> </CRow>
      <CRow style="height: 120px">
        <CCol sm="4" lg="4" style="width: 35%;text-align:center;" class="link-right">
          <img :src="require(`@/../public/fan/${fanStatus[fanInfo.status].name}风机x2.png`)"/>
          <div class="h3 text">{{ fanInfo.name }}</div>
        </CCol>
        <CCol sm="8" lg="8" class="h5 py-3 text-center" >
          <div class="text">
            <img src="@/../public/icon/风机.png" /> 风机状态：{{
              fanStatus[fanInfo.status].name
            }}
          </div>
          <div class="text">
            <img src="@/../public/icon/警报等级.png" /> 警报等级：{{
              alertLevel[fanInfo.status].name
            }}
          </div>
        </CCol>
      </CRow>
    </div>
  </div>
</template>
    
<script>
import {getFanInfo} from "@/api/fan";
export default {
  name: "FanBaseInfo",
  data() {
    return {
      fanStatus: [
        {
          name: "正常",
          color: "green",
        },
        {
          name: "启动中",
          color: "#bb98ff",
        },
        {
          name: "离线",
          color: "gray",
        },
        {
          name: "待风",
          color: "#1a4ce4",
        },
        {
          name: "维护",
          color: "#ff9400",
        },
        {
          name: "故障",
          color: "#b30000",
        },
      ],
      fanInfo: {
        name: "风机1",
        status: 0,
        alert_level: 0,
      },
      alertLevel: [
        {
          name: "正常",
          color: "green",
        },
        {
          name: "一般",
          color: "#bb98ff",
        },
        {
          name: "严重",
          color: "gray",
        },
        {
          name: "紧急",
          color: "#1a4ce4",
        },
      ],
    };
  },
  created() {
    this.getFanInfo();
  },
  methods: {
    ///////////////////////////////////////////////////
    getFanInfo() {
      getFanInfo(1).then((res) => {
          if (res.code == 200) {
            this.fanInfo = res.data;
          }
        })
        .catch((err) => {
          console.log(err);
        });
    },
  },
};
</script>
 