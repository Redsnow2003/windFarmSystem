<template>
  <div>
    <CRow>
      <CCol sm="3" lg="3">
        <div class="card" style="background: #011240; height: 300px">
          <div class="card-body" style="color: #9fdfdf">
            <div>正常</div>
            <CRow>
              <CCol sm="4" lg="4">
                <img src="../../../../public/fan/正常风机x2.png"/>
                <div class="h1 text">A01</div>
              </CCol>
              <CCol sm="8" lg="8" class="h5 py-3 text-center">
                <div class="text"><img src="../../../../public/icon/风机.png"/>   风机状态：正常</div>
                <div class="text"><img src="../../../../public/icon/警报等级.png"/>   警报等级：正常</div>
              </CCol>
            </CRow>
          </div>
        </div>
      </CCol>
      <CCol sm="5" lg="5">
        <div class="card" style="background: #011240; height: 300px">
          <div class="card-body" style="color: #9fdfdf">
            <div>机械状态</div>
          </div>
        </div>
      </CCol>
    </CRow>
    <CRow>
      <CCol sm="3" lg="3">
        <div class="card" style="background: #011240; height: 500px">
          <div class="card-body" style="color: #9fdfdf">
            <div>桨叶状态</div>
          </div>
        </div>
      </CCol>
      <CCol sm="5" lg="5">
        <div class="card" style="background: #011240; height: 500px">
          <div class="card-body" style="color: #9fdfdf">
            <div>电网状况</div>
          </div>
        </div>
      </CCol>
    </CRow>
  </div>
</template>
  
  
  <script>
// 引入echarts
import * as echarts from "echarts";
import axios from "axios";
export default {
  name: "WindFarmMap",
  data() {
    return {};
  },
  created() {},

  mounted() {},
  methods: {},
  watch: {},
};
</script>