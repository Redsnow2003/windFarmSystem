<template>
  <div>
    <CRow>
      <CCol sm="3" lg="3">
        <FanBaseInfo />
        <PowerStat />
      </CCol>
      <CCol sm="9" lg="9">
        <CCard>
          <div class="h3" style="width: 100%; height: 87vh">
            <CCardHeader>系统设置</CCardHeader>
            <CCardBody class="h4">
              <CRow>
                <CCol sm="3" lg="3">名称</CCol>
                <CCol sm="2" lg="2">最大值</CCol>
                <CCol sm="2" lg="2">最小值</CCol>
                <CCol sm="1" lg="1">单位</CCol>
                <CCol sm="2" lg="2">当前值/设定值</CCol>
                <CCol sm="1" lg="1">操作</CCol>
              </CRow>
              <CRow>
                <CCol style="height: 40px" />
              </CRow>
              <el-scrollbar style="height: 73vh;">
                <div>
                  <SettingItem
                    name="风机启停"
                    plcName="WindFarmStartStop"
                    max="1000"
                    min="0"
                    value="100"
                    unit="KW"
                  />
                  <SettingItem
                    name="风机启停"
                    plcName="WindFarmStartStop"
                    max="1000"
                    min="0"
                    value="100"
                    unit="KW"
                  />
                  <SettingItem
                    name="风机启停"
                    plcName="WindFarmStartStop"
                    max="1000"
                    min="0"
                    value="100"
                    unit="KW"
                  />
                  <SettingItem
                    name="风机启停"
                    plcName="WindFarmStartStop"
                    max="1000"
                    min="0"
                    value="100"
                    unit="KW"
                  />
                  <SettingItem
                    name="风机启停"
                    plcName="WindFarmStartStop"
                    max="1000"
                    min="0"
                    value="100"
                    unit="KW"
                  />
                  <SettingItem
                    name="风机启停"
                    plcName="WindFarmStartStop"
                    max="1000"
                    min="0"
                    value="100"
                    unit="KW"
                  />
                  <SettingItem
                    name="风机启停"
                    plcName="WindFarmStartStop"
                    max="1000"
                    min="0"
                    value="100"
                    unit="KW"
                  />
                  <SettingItem
                    name="风机启停"
                    plcName="WindFarmStartStop"
                    max="1000"
                    min="0"
                    value="100"
                    unit="KW"
                  />
                  <SettingItem
                    name="风机启停"
                    plcName="WindFarmStartStop"
                    max="1000"
                    min="0"
                    value="100"
                    unit="KW"
                  />
                  <SettingItem
                    name="风机启停"
                    plcName="WindFarmStartStop"
                    max="1000"
                    min="0"
                    value="100"
                    unit="KW"
                  />
                  <SettingItem
                    name="风机启停"
                    plcName="WindFarmStartStop"
                    max="1000"
                    min="0"
                    value="100"
                    unit="KW"
                  />
                  <SettingItem
                    name="风机启停"
                    plcName="WindFarmStartStop"
                    max="1000"
                    min="0"
                    value="100"
                    unit="KW"
                  />
                  <SettingItem
                    name="风机启停"
                    plcName="WindFarmStartStop"
                    max="1000"
                    min="0"
                    value="100"
                    unit="KW"
                  />
                  <SettingItem
                    name="风机启停"
                    plcName="WindFarmStartStop"
                    max="1000"
                    min="0"
                    value="100"
                    unit="KW"
                  />
                  <SettingItem
                    name="风机启停"
                    plcName="WindFarmStartStop"
                    max="1000"
                    min="0"
                    value="100"
                    unit="KW"
                  />
                  <SettingItem
                    name="风机启停"
                    plcName="WindFarmStartStop"
                    max="1000"
                    min="0"
                    value="100"
                    unit="KW"
                  />
                  <SettingItem
                    name="风机启停"
                    plcName="WindFarmStartStop"
                    max="1000"
                    min="0"
                    value="100"
                    unit="KW"
                  />
                  <SettingItem
                    name="风机启停"
                    plcName="WindFarmStartStop"
                    max="1000"
                    min="0"
                    value="100"
                    unit="KW"
                  />
                  <SettingItem
                    name="风机启停"
                    plcName="WindFarmStartStop"
                    max="1000"
                    min="0"
                    value="100"
                    unit="KW"
                  />
                  <SettingItem
                    name="风机启停"
                    plcName="WindFarmStartStop"
                    max="1000"
                    min="0"
                    value="100"
                    unit="KW"
                  />
                </div>
              </el-scrollbar>
            </CCardBody>
          </div>
        </CCard>
      </CCol>
    </CRow>
  </div>
</template>
  
  
  <script>
import FanBaseInfo from "../components/fanbaseinfo"; //引入组件
import PowerStat from "./components/powerstat"; //引入组件
import SettingItem from "./components/settingitem"; //引入组件
export default {
  name: "WindFarmMap",
  components: {
    FanBaseInfo,
    PowerStat,
    SettingItem,
  }, //注册组件
};
</script>

<style lang="scss">
.el-scrollbar__wrap {
  overflow-x: hidden;
  width: 103%;
}
</style>