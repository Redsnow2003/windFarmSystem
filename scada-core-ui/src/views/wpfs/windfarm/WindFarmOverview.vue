<template>
  <div>
    <!-- <CCard>
      <CCardHeader>概要信息</CCardHeader>
      <CCardBody> -->
        <!-- <ColwireWidget/> -->

        <CRow>
          <CCol sm="10" lg="10">
            <PowerInfo :farmId="farmId" />

          <!--风速对比图-->
          <WindSpeed :farmId="farmId" />
          </CCol>
          <CCol sm="2" lg="2">
             <!--短期预测准确率和超短期准确率-->
          <Rate :farmId="farmId"></Rate>

          <!--集电线数据-->
          <CollWireInfo :farmId="farmId"></CollWireInfo>

          <!--风机数据-->
          <FanInfo :farmId="farmId" />

          <!--测风塔数据-->
          <WindTowerInfo :farmId="farmId" />
          </CCol>    
       
        </CRow>
      <!-- </CCardBody>
    </CCard> -->
  </div>
</template>

<script>
import Rate from "./windFarmOverViewCompoment/Rate";
import FanInfo from "./windFarmOverViewCompoment/FanInfo";
import CollWireInfo from "./windFarmOverViewCompoment/CollWireInfo";
import WindTowerInfo from "./windFarmOverViewCompoment/WindTowerInfo";
import PowerInfo from "./windFarmOverViewCompoment/PowerInfo";
import WindSpeed from "./windFarmOverViewCompoment/WindSpeed";

import { getFarmId } from "@/utils/auth";

//import ColwireWidget from "./ColwireWidget";

export default {
  name: "windfarmoverview",
  data() {
    return {
      farmId: null
    };
  },
  components: {
    //ColwireWidget,
    FanInfo,
    CollWireInfo,
    WindTowerInfo,
    Rate,
    PowerInfo,
    WindSpeed
  },
  created() {
    this.setFarmId(getFarmId());
  },
  methods: {
    setFarmId(id) {
      this.farmId = id;
    }
  }
};
</script>