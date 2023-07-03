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
              <TemperatureInfo info="变频器" :value="temperatureInfo.transformer" />
              <TemperatureInfo info="齿轮箱入口油温" :value="temperatureInfo.gearbox_in" />
              <TemperatureInfo info="齿轮箱油槽" :value="temperatureInfo.gearbox_oil" />
              <TemperatureInfo info="齿轮箱输入轴油温" :value="temperatureInfo.gearbox_input" />
              <TemperatureInfo info="齿轮箱输出轴油温" :value="temperatureInfo.gearbox_output" />
              <TemperatureInfo info="发动机空冷温度" :value="temperatureInfo.engine_aircool" />
              <TemperatureInfo info="发动机轴承A温度" :value="temperatureInfo.engine_bearing_a" />
              <TemperatureInfo info="发动机轴承B温度" :value="temperatureInfo.engine_bearing_b" />
              <TemperatureInfo info="发动机定子绕组温度U1" :value="temperatureInfo.stator_u1" />
              <TemperatureInfo info="发动机定子绕组温度U2" :value="temperatureInfo.stator_u2" />
              <TemperatureInfo info="发动机定子绕组温度V1" :value="temperatureInfo.stator_v1" />
              <TemperatureInfo info="发动机定子绕组温度V2" :value="temperatureInfo.stator_v2" />
              <TemperatureInfo info="发动机定子绕组温度W1" :value="temperatureInfo.stator_w1" />
              <TemperatureInfo info="发动机定子绕组温度W2" :value="temperatureInfo.stator_w2" />
              <TemperatureInfo info="机舱空气温度" :value="temperatureInfo.engineroom_air" />
              <TemperatureInfo info="机舱柜温度" :value="temperatureInfo.engineroom_box" />
              <TemperatureInfo info="机舱外环境温度" :value="temperatureInfo.engineroom_out" />
              <TemperatureInfo info="主轴齿箱侧温度" :value="temperatureInfo.spindle_gearbox" />
              <TemperatureInfo info="主轴叶轮侧温度" :value="temperatureInfo.spindle_wheel" />
              <TemperatureInfo info="塔筒温度" :value="temperatureInfo.tower_tube" />
              <TemperatureInfo info="塔底柜温度" :value="temperatureInfo.bottom_box" />
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
import { getFanTemperatureInfo } from "@/api/fan"; //引入接口
import { getCurrentFanId } from "@/store/fan";
export default {
  name: "FanStatus",
  data() {
    return {
      temperatureInfo: {
        id: 1, //温度信息id
        fan_id: 1, //风机id
        transformer: 13, //变频器
        gearbox_in: 45, //齿轮箱入口油温
        gearbox_oil: 35, //齿轮箱油槽
        gearbox_input: 56, //齿轮箱输入轴油温
        gearbox_output: 13, //齿轮箱输出轴油温
        engine_aircool: 50, //发动机空冷温度
        engine_bearing_a: 50, //发动机轴承A温度
        engine_bearing_b: 43, //发动机轴承B温度
        stator_u1: 56, //发动机定子绕组温度U1
        stator_u2: 8, //发动机定子绕组温度U2
        stator_v1: 9, //发动机定子绕组温度V1
        stator_v2: 25, //发动机定子绕组温度V2
        stator_w1: 57, //发动机定子绕组温度W1
        stator_w2: 46, //发动机定子绕组温度W2
        engineroom_air: 56, //机舱空气温度
        engineroom_box: 24, //机舱柜温度
        engineroom_out: 25, //机舱外环境温度
        spindle_gearbox: 57, //主轴齿箱侧温度
        spindle_wheel: 46, //主轴叶轮侧温度
        tower_tube: 46, //塔筒温度
        bottom_box: 56, //塔底柜温度
      },
    };
  },
  created() {
    this.getTemperatureInfo();
  },
  components: {
    FanBaseInfo,
    MachineStatus,
    BladesInfo,
    GridStatus,
    TemperatureInfo,
  }, //注册组件
  mounted() {},
  methods: {
    getTemperatureInfo() {
      const fanId = getCurrentFanId();
      getFanTemperatureInfo(fanId).then((res) => {
          if (res.code == 200) {
            console.log(res.data);
            this.temperatureInfo = res.data;
          }
        })
        .catch((err) => {
          console.log(err);
        });
    },
  },
  watch: {},
};
</script>