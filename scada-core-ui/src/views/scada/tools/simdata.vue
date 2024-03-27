<template>
    <CRow>
        <CCol sm="2" lg="2">
            <CCard>
                <CCardHeader>风场数据</CCardHeader>
                <CCardBody>
                    <CCard>
                        <CListGroup flush>
                            <CListGroupItem v-for="(item,index) in rtulist" :key="index">
                                <div>
                                    <img src="fan/正常风机.png" />
                                    {{ item.name }}
                                </div>
                            </CListGroupItem>
                        </CListGroup>
                    </CCard>
                </CCardBody>
            </CCard>
        </CCol>
        <CCol sm="10" lg="10">
        </CCol>
    </CRow>
</template>

<script>
  import { getCollectRTU } from "@/api/datato";
export default {
    name: 'SimData',
    data() {
        return {
            rtulist: [], // Array to store wind turbine data
            selectedTurbine: null // Variable to store the selected turbine
        };
    },
    created() {
      this.fetchData();
    },
    methods: {
        fetchData() {
            getCollectRTU().then(response => {
                this.rtulist = response.data;
            }).catch(error => {
                console.log(error);
            });
        }
    }
};
</script>