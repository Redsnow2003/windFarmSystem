<template>
  <CRow>
    <CCol sm="6" lg="2">
      <CWidgetDropdown color="gradient-info" header="9.823" text="短期预测准确度">
      </CWidgetDropdown>
      
    </CCol>
    <CCol sm="6" lg="2">
      <CWidgetDropdown color="gradient-success" header="9.823" text="超短期预测准确度">
      </CWidgetDropdown>
    </CCol>
    <CCol sm="6" lg="2">
      <CWidgetDropdown color="gradient-danger" header="9.823" text="集电线信息">
      </CWidgetDropdown>
    </CCol>
    <CCol sm="6" lg="3">
      <CWidgetDropdown color="gradient-danger" header="9.823" text="风场信息">
      </CWidgetDropdown>
    </CCol>
    <CCol sm="6" lg="3">
      <CWidgetDropdown color="gradient-danger" header="9.823" text="测风塔信息">
      </CWidgetDropdown>
    </CCol>
  </CRow>
</template>

<script>

export default {
  name: 'ColwireWidget'
}
</script>
