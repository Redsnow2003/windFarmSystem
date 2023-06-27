<template>
  <div class="card rectangle" >
    <tr>
        <td>
            <li class="small" :style="{color: color}" style="height: 5px;margin-top: 5px;margin-left: 5px;">{{fanStatus}}</li>
        </td>
    </tr>
    <div class="card-body" >
      <div style="text-align:center;">
        <img :src="require(`@/../public/fan/${fanStatus}.png`)"/>
        <div class="text" :style="{color: color}">{{ fanName }}</div>
      </div>
    </div>
    <tr>
        <td>
            <div class="small" :style="{color: color}" style="width:100px;">{{ windSpeed }}m/s</div>
        </td>
        <td>
            <div class="small" :style="{color: color}" style="width:40px;">{{ power }}kw</div>
        </td>
    </tr>

        
  </div>
</template>
  
  <script>
export default {
  name: "FanWidget",
  data() {
    return {
      color: "red",
    };
  },
  props: {
    fanName: String, //风机名称
    fanStatus: String, //风机状态
    windSpeed: Number, //风速
    power: Number, //功率
  },
  created() {
    if(this.fanStatus == "正常风机"){
        this.color = "green";
    }else if(this.fanStatus == "启动中风机"){
        this.color = "#bb98ff";
    }else if(this.fanStatus == "离线风机"){
        this.color = "gray";
    }else if(this.fanStatus == "待风风机"){
        this.color = "#1a4ce4";
    }else if(this.fanStatus == "维护风机"){
        this.color = "#ff9400";
    }else if(this.fanStatus == "故障风机"){
        this.color = "#b30000";
    }
  },
  watch: {
    fanStatus: function (val) {
      if(val == "正常风机"){
        this.color = "green";
    }else if(val == "启动中风机"){
        this.color = "#bb98ff";
    }else if(val == "离线风机"){
        this.color = "gray";
    }else if(val == "待风风机"){
        this.color = "#1a4ce4";
    }else if(val == "维护风机"){
        this.color = "#ff9400";
    }else if(val == "故障风机"){
        this.color = "#b30000";
    }
    },
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
  