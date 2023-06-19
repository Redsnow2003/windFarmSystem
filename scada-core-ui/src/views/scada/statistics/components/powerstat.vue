<template>
  <div style="align-items: center">
    <CRow>
      <CCol sm="12" lg="12">
        <div class="card" style="background: #011240; height: 120px">
          <div class="card-body" style="color: #9fdfdf">
            <div class="small">总发电量（万kwh）</div>
            <div class="h1 py-3 text-center">120611.3</div>
          </div>
        </div>
      </CCol>
    </CRow>
    <CRow>
      <CCol sm="6" lg="6">
        <div class="card" style="background: #011240; height: 155px">
          <div class="card-body" style="color: #9fdfdf">
            <div class="small">总耗电量（万kwh）</div>
            <div
              class="h1 py-3"
              style="
                display: flex;
                justify-content: center;
                align-items: center;
                height: 130px;
              "
            >
              2205.9
            </div>
          </div>
        </div>
      </CCol>
      <CCol sm="6" lg="6">
        <CRow>
          <CCol>
            <div class="card" style="background: #011240; height: 65px">
              <div class="card-body" style="color: #9fdfdf">
                <div class="small" style="height: 5px">发无功总量（万kwh）</div>
                <div class="h4 py-3 text-center">129.7</div>
              </div>
            </div>
          </CCol>
        </CRow>
        <CRow>
          <CCol>
            <div class="card" style="background: #011240; height: 65px">
              <div class="card-body" style="color: #9fdfdf">
                <div class="small" style="height: 5px">收无功总量（万kwh）</div>
                <div class="h4 py-3 text-center">1355.7</div>
              </div>
            </div>
          </CCol>
        </CRow>
      </CCol>
    </CRow>
  </div>
</template>
            
      <script>
export default {
  name: "DriveList",
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
         