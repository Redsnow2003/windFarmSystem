<template>
  <div id="app">
    <p v-for="windfarm in dateFilteredItems" :key="windfarm.id">
      <CRow>
        <CCol>
          <CCard>
            <CCardHeader>
              {{ windfarm.name }}
            </CCardHeader>
            <CCardBody>
              短期预报准确率
              <el-progress :text-inside="true" :stroke-width="20" :percentage="windfarm.short_rate" color="#4682B4"></el-progress>
              超短期预报准确率
              <el-progress :text-inside="true" :stroke-width="20" :percentage="windfarm.ultra_rate" color="#4682B4"></el-progress>
            </CCardBody>
          </CCard>
        </CCol>
      </CRow>
    </p>
  </div>
</template>

<script>
import { getWindFarmInfoList } from "@/api/windfarminfo";
export default {
  name: "WindFarmList",

  data() {
    return {
      dateFilteredItems: [],
    };
  },

  created() {
    this.fetchData();
  },
  methods: {
    fetchData() {
      getWindFarmInfoList()
        .then((response) => {
          this.dateFilteredItems = response.data;
        })
        .catch((error) => {
          console.log(error);
        });
    },
  },
};
</script>
