<template>
  <div class="card rectangle" >
    <tr>
        <td>
            <div class="small" style="color: aqua;height: 5px;margin-top: 5px;margin-left: 5px;">{{fanStatus}}</div>
        </td>
    </tr>
    <div class="card-body" >
      <div style="text-align:center;">
        <img :src="require(`@/../public/fan/${fanStatus}.png`)"/>
        <div class="text">{{ fanName }}</div>
      </div>
    </div>
    <tr>
        <td>
            <div class="small" style="color: aqua;width:100px;">{{ windSpeed }}m/s</div>
        </td>
        <td>
            <div class="small" style="color: aqua;width:50px;">{{ power }}kw</div>
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
.rectangle{
    width: 150px;
    height: 140px;
    border-radius: 7px;
    position: relative;
    background-image: linear-gradient(bottom, rgb(16, 40, 78) 0%, rgb(15, 73, 106) 90%); 
    .text {
    font-size: 16px;
    color: rgb(241, 239, 239);
  }
}
</style>
  