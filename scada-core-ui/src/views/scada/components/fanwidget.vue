<template>
  <div class="card title-small" >
    <tr>
        <td>
            <div class="small" style="color: aqua;height: 5px;margin-top: 5px;margin-left: 5px;">正常风机</div>
        </td>
    </tr>
    <div class="card-body" >
      <div style="text-align:center;">
        <img src="../../../../public/fan/正常风机.png"/>
        <div class="text">A01</div>
      </div>
    </div>
    <tr>
        <td>
            <div class="small" style="color: aqua;width:100px;">5.2m/s</div>
        </td>
        <td>
            <div class="small" style="color: aqua;width:50px;">100.5kw</div>
        </td>
    </tr>

        
  </div>
</template>
  
  <script>
export default {
  name: "FanWidget",
  data() {
    return {};
  },
  props: {
    fanName: String, //风机名称
    fanStatus: String, //风机状态
    windSpeed: Number, //风速
    power: Number, //功率
  },
};
</script>
  <style lang="scss" scoped>
.title-small {
  width: 150px;
  height: 140px;
  background-color: #011240;
  .text {
    font-size: 16px;
    color: rgb(241, 239, 239);
  }
}
</style>
  