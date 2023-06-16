<template>
  <div>
    <CRow>
      <CCol> 
        <WheelInfo fanName="A01" fanStatus="正常" alertLevel="正常"/>
      </CCol>
    </CRow>
    <CRow>
      <CCol>
        <DriveList/>
      </CCol>
    </CRow>
  </div>
</template>
  
  
<script>
import WheelInfo from "./components/wheelinfo";
import DriveList from "./components/drivelist"
export default {
  name: "Wheel",
  data() {
    return {};
  },
  created() {},
  components: {
    WheelInfo,
    DriveList
  }, //注册组件
  mounted() {},
  methods: {},
  watch: {},
};
</script>