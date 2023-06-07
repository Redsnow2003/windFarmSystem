<template>
  <CCard>
    <CCardHeader>预测准确度</CCardHeader>
    <li class="list-group-item">短 期: {{ shortRate }}%</li>
    <li class="list-group-item">超短期: {{ ultraRate }}%</li>
  </CCard>
</template>
<script>
import { getWindFarmInfo } from "@/api/windfarminfo.js";

export default {
  name: "Rate",
  props: ["farmId"],
  data() {
    return {
      shortRate: 0,
      ultraRate: 0,
    };
  },
  created() {
    this.fetchData();
  },
  methods: {
    fetchData() {
      getWindFarmInfo(this.farmId)
        .then((response) => {
          //短期预测准确率和超短期准确率
          this.shortRate = response.data.short_rate;
          this.ultraRate = response.data.ultra_rate;
        })
        .catch((error) => {
          console.log(error);
        });
    },
  },
};
</script>