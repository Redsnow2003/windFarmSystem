<template>
  <div class="card" style="background: #011240; height: 350px">
    <CRow>
      <CCol sm="6" lg="6">
        <div class="card-body" style="color: #9fdfdf">
          <div class="lg">风机时间统计</div>
          <CRow style="height: 20px"></CRow>
          <CRow>
            <CCol sm="8" lg="8">
              <CListGroup flush>
                <CListGroupItem>待机时间</CListGroupItem>
                <CListGroupItem>电池自检时间</CListGroupItem>
                <CListGroupItem>并网时间</CListGroupItem>
                <CListGroupItem>手动维护时间</CListGroupItem>
                <CListGroupItem>正常停机</CListGroupItem>
                <CListGroupItem>故障停机</CListGroupItem>
              </CListGroup>
            </CCol>
            <CCol sm="4" lg="4">
              <CListGroup flush>
                <CListGroupItem><div class="rectangle" style="width: 50px">50h</div></CListGroupItem>
                <CListGroupItem><div class="rectangle" style="width: 150px">50h</div></CListGroupItem>
                <CListGroupItem><div class="rectangle" style="width: 50px">50h</div></CListGroupItem>
                <CListGroupItem><div class="rectangle" style="width: 150px">50h</div></CListGroupItem>
                <CListGroupItem><div class="rectangle" style="width: 50px">50h</div></CListGroupItem>
                <CListGroupItem><div class="rectangle" style="width: 150px">50h</div></CListGroupItem>
              </CListGroup>
            </CCol>
          </CRow>
        </div>
      </CCol>
      <CCol sm="6" lg="6">
        <div class="card-body" style="color: #9fdfdf">
          <div class="lg">风机启动时间统计</div>
        </div>
      </CCol>
    </CRow>
  </div>
</template>
              
        <script>
export default {
  name: "FanTime",
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
           
           <style scoped>
.rectangle {
  border-radius: 7px;
  position: relative;
  background-image: linear-gradient(
    left,
    rgb(2, 145, 59) 0%,
    rgb(66, 245, 209) 90%
  );
}
</style>