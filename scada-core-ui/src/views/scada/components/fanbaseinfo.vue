<template>
  <div class="card" style="background: #011240; height: 300px">
    <div class="card-body" style="color: #9fdfdf">
      <p>{{ fanStatus }}</p>
      <CRow style="height: 40px"> </CRow>
      <CRow style="height: 120px">
        <CCol sm="4" lg="4" style="width: 35%;text-align:center;" class="link-right">
          <img src="../../../../public/fan/正常风机x2.png" />
          <div class="h1 text">{{ fanName }}</div>
        </CCol>
        <CCol sm="8" lg="8" class="h5 py-3 text-center" >
          <div class="text">
            <img src="../../../../public/icon/风机.png" /> 风机状态：{{
              fanStatus
            }}
          </div>
          <div class="text">
            <img src="../../../../public/icon/警报等级.png" /> 警报等级：{{
              alertLevel
            }}
          </div>
        </CCol>
      </CRow>
    </div>
  </div>
</template>
    
    <script>
export default {
  name: "FanBaseInfo",
  data() {
    return {};
  },
  props: {
    fanName: String, //风机名称
    fanStatus: String, //风机状态
    alertLevel: String, //警报等级
  },
};
</script>
 