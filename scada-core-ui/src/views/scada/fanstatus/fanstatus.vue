<template>
  <div>
    <CRow>
      <CCol sm="8" lg="8">
        <CRow>
          <CCol sm="4" lg="4">
            <FanBaseInfo />
          </CCol>
          <CCol sm="8" lg="8">
            <MachineStatus />
          </CCol>
        </CRow>
        <CRow>
          <CCol sm="4" lg="4">
            <BladesInfo />
          </CCol>
          <CCol sm="8" lg="8">
            <GridStatus />
          </CCol>
        </CRow>
      </CCol>
      <CCol sm="4" lg="4">
        <div class="h3 link-bottom" style="height: 60px">温度信息</div>
        <CRow style="height: 30px"></CRow>
        <div class="link-left">
          <CRow>
            <CCol sm="1" lg="1"></CCol>
            <CCol>
              <TemperatureInfo info="变频器" value="13" />
              <TemperatureInfo info="齿轮箱入口油温" value="45" />
              <TemperatureInfo info="齿轮箱油槽" value="35" />
              <TemperatureInfo info="齿轮箱输入轴油温" value="56" />
              <TemperatureInfo info="齿轮箱输出轴油温" value="13" />
              <TemperatureInfo info="发动机空冷温度" value="50" />
              <TemperatureInfo info="发动机轴承A温度" value="50" />
              <TemperatureInfo info="发动机轴承B温度" value="43" />
              <TemperatureInfo info="发动机定子绕组温度U1" value="56" />
              <TemperatureInfo info="发动机定子绕组温度U2" value="8" />
              <TemperatureInfo info="发动机定子绕组温度V1" value="9" />
              <TemperatureInfo info="发动机定子绕组温度V2" value="25" />
              <TemperatureInfo info="发动机定子绕组温度W1" value="57" />
              <TemperatureInfo info="发动机定子绕组温度W2" value="46" />
              <TemperatureInfo info="机舱空气温度" value="56" />
              <TemperatureInfo info="机舱柜温度" value="24" />
              <TemperatureInfo info="机舱外环境温度" value="25" />
              <TemperatureInfo info="主轴齿箱侧温度" value="57" />
              <TemperatureInfo info="主轴叶轮侧温度" value="46" />
              <TemperatureInfo info="塔筒温度" value="56" />
              <TemperatureInfo info="塔底柜温度" value="24" />
            </CCol>
          </CRow>
        </div>
      </CCol>
    </CRow>
  </div>
</template>
  
  
  <script>
import FanBaseInfo from "../components/fanbaseinfo"; //引入组件
import MachineStatus from "./components/machinestatus"; //引入组件
import BladesInfo from "./components/bladesinfo"; //引入组件
import GridStatus from "./components/gridstatus"; //引入组件
import TemperatureInfo from "./components/temperatureinfo"; //引入组件
export default {
  name: "FanStatus",
  data() {
    return {};
  },
  created() {},
  components: {
    FanBaseInfo,
    MachineStatus,
    BladesInfo,
    GridStatus,
    TemperatureInfo,
  }, //注册组件
  mounted() {},
  methods: {},
  watch: {},
};
</script>