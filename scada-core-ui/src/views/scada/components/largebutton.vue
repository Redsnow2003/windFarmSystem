<template>
  <div
    class="card rectangle h2"
    :style="{ width: width, height: height }"
  >{{ name }}</div>
</template>
    
    <script>
export default {
  name: "LgButton",
  data() {
    return {};
  },
  props: {
    name: String, // 名字
    status: Number, // 状态
    width: String, // 宽度
    height: String, // 高度
  },
};
</script>
<style scoped>
.rectangle{
    text-align: center;
    vertical-align: middle;
    line-height: 80px;
    border-radius: 7px;
    position: relative;
    background-image: linear-gradient(bottom, rgb(16, 40, 78) 0%, rgb(15, 73, 106) 90%); 
}

</style>