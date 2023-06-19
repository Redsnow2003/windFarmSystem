<template>
    <div style="height:35px">
      <CRow>
        <CCol sm="4" lg="4">
            <p>{{ info }}</p>
        </CCol>
        <CCol sm="8" lg="8">
            <div class="rectangle" :style="{width: value*5 + 'px'}">{{ value }}℃</div>
        </CCol>
      </CRow>
    </div>
  </template>
        
  <script>
  export default {
    name: "TemperatureInfo",
    data() {
      return {};
    },
    props: {
      info: String, //信息
      value: String, //值
    },
    mounted() {
     
    },
    methods: {
      ///////////////////////////////////////////////////
    },
  };
 
  </script>
   <style scoped>
   .rectangle{
       border-radius: 7px;
       position: relative;
       background-image: linear-gradient(left, rgb(182, 24, 3) 0%, rgb(253, 106, 27) 90%); 
   }

   </style>