<template>
  <div style="align-items: center">
    <CRow>
      <CCol sm="12" lg="12">
        <div class="card" style="background: #011240; height: 120px">
          <div class="card-body" style="color: #9fdfdf">
            <div class="small">总发电量（万kwh）</div>
            <div class="h1 py-3 text-center">{{ powerInfo.total_electric }}</div>
          </div>
        </div>
      </CCol>
    </CRow>
    <CRow>
      <CCol sm="6" lg="6">
        <div class="card" style="background: #011240; height: 155px">
          <div class="card-body" style="color: #9fdfdf">
            <div class="small">总耗电量（万kwh）</div>
            <div
              class="h1 py-3"
              style="
                display: flex;
                justify-content: center;
                align-items: center;
                height: 130px;
              "
            >
              {{ powerInfo.total_consumption }}
            </div>
          </div>
        </div>
      </CCol>
      <CCol sm="6" lg="6">
        <CRow>
          <CCol>
            <div class="card" style="background: #011240; height: 65px">
              <div class="card-body" style="color: #9fdfdf">
                <div class="small" style="height: 5px">发无功总量（万kwh）</div>
                <div class="h4 py-3 text-center">{{ powerInfo.reactive_send }}</div>
              </div>
            </div>
          </CCol>
        </CRow>
        <CRow>
          <CCol>
            <div class="card" style="background: #011240; height: 65px">
              <div class="card-body" style="color: #9fdfdf">
                <div class="small" style="height: 5px">收无功总量（万kwh）</div>
                <div class="h4 py-3 text-center">{{ powerInfo.reactive_receive }}</div>
              </div>
            </div>
          </CCol>
        </CRow>
      </CCol>
    </CRow>
  </div>
</template>
            
<script>
import { getFanElectricInfo } from "@/api/fan"; //引入接口
import { getCurrentFanId } from "@/store/fan";
export default {
  name: "PowerStat",
  data() {
    return {
      powerInfo: {
        id: 1, //id
        fan_id: 1, //风机id
        total_electric: 1, //总发电量
        total_consumption: 1, //总耗电量
        reactive_send: 1, //发无功总量
        reactive_receive: 1, //收无功总量
      },
    };
  },
  created() {
    this.getPowerStat();
  },
  methods: {
    //获取风机电量统计信息
    getPowerStat() {
      const fanId = getCurrentFanId();
      getFanElectricInfo(fanId).then((res) => {
          if (res.code == 200) {
            console.log(res.data);
            this.powerInfo = res.data;
          }
        })
        .catch((err) => {
          console.log(err);
        });
    },
  },
};
</script>
         