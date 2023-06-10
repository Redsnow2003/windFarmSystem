<template>
  <div>
    <CRow>
      <CCol sm="3" lg="3">
        <FanBaseInfo fanName="A01" fanStatus="正常" alertLevel="正常" />
      </CCol>
      <CCol sm="5" lg="5">
        <MachineStatus />
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
import FanBaseInfo from "../components/fanbaseinfo"; //引入组件
import MachineStatus from "./components/machinestatus"; //引入组件
export default {
  name: "WindFarmMap",
  data() {
    return {};
  },
  created() {},
  components: {
    FanBaseInfo,
    MachineStatus
  }, //注册组件
  mounted() {},
  methods: {},
  watch: {},
};
</script>