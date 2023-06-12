<template>
  <div class="card" style="background: #011240; height: 700px">
    <div class="card-body" style="color: #9fdfdf">
      <CRow>
        <CCol sm="4" lg="4">
          <CRow>
            <CCol sm="4" lg="4">叶轮转速1 </CCol>
            <CCol sm="4" lg="4">0.2rad/s | - | - </CCol>
          </CRow>
        </CCol>
        <CCol sm="4" lg="4"> </CCol>
        <CCol sm="4" lg="4"> </CCol>
      </CRow>
    </div>
  </div>
</template>
        
  <script>
export default {
  name: "WheelInfo",
  data() {
    return {};
  },
  props: {
    fanName: String, //风机名称
    fanStatus: String, //风机状态
    alertLevel: String, //警报等级
  },
  mounted() {},
  methods: {},
};
</script>
     