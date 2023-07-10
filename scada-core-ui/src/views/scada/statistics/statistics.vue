<template>
  <div>
    <CRow>
      <CCol sm="8" lg="8">
        <CRow>
          <CCol sm="5" lg="5">
            <FanBaseInfo />
          </CCol>
          <CCol sm="7" lg="7">
            <PowerStat />
          </CCol>
        </CRow>
        <CRow>
          <CCol sm="12" lg="12"> 
            <PowerChart/>
          </CCol>
        </CRow>
      </CCol>
      <CCol sm="4" lg="4">
        <CRow>
          <CCol sm="12" lg="12">
            <WindDirection />
            <FanTime />
          </CCol>
        </CRow>
      </CCol>
    </CRow>
  </div>
</template>
  
  
  <script>
import FanBaseInfo from "../components/fanbaseinfo"; //引入组件
import PowerStat from "./components/powerstat"; //引入组件
import PowerChart from "./components/powerchart"; //引入组件
import WindDirection from "./components/winddirection"; //引入组件
import FanTime from "./components/fantime"; //引入组件
export default {
  name: "WindFarmMap",
  components: {
    FanBaseInfo,
    PowerStat,
    PowerChart,
    WindDirection,
    FanTime
  }, //注册组件
};
</script>