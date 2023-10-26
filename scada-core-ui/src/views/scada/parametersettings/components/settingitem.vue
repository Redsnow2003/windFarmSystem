<template>
  <div style="height: 50px;color: aquamarine; font-size: 16px;">
    <CRow>
      <CCol sm="3" lg="3">{{ name }}</CCol>
      <CCol sm="2" lg="2">{{ max }}</CCol>
      <CCol sm="2" lg="2">{{ min }}</CCol>
      <CCol sm="1" lg="1">{{ unit }}</CCol>
      <CCol sm="2" lg="2">
        <CInput :placeholder="value" v-model="username">
        </CInput>
      </CCol>
      <CCol sm="1" lg="1"><CButton color="info">上传</CButton></CCol>
    </CRow>
  </div>
</template>
    
<script>
export default {
  name: "SettingItem",
  data() {
    return {};
  },
  props: {
    name: String, //设置点中文名称
    plcName: String, //PLC点名名称
    max: Number, //最大值
    min: Number, //最小值
    value: Number, //当前值
    unit: String, //单位
  },
};
</script>
    