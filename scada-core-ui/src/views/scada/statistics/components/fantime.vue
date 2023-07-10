<template>
  <div class="card" style="background: #011240; height: 430px">
    <div class="card-body" style="color: #9fdfdf">
          <div class="lg">风机时间统计</div>
          <CRow style="height: 20px"></CRow>
          <CRow>
            <CCol sm="4" lg="4">
              <CListGroup flush>
                <CListGroupItem>待机时间</CListGroupItem>
                <CListGroupItem>电池自检时间</CListGroupItem>
                <CListGroupItem>并网时间</CListGroupItem>
                <CListGroupItem>手动维护时间</CListGroupItem>
                <CListGroupItem>正常停机</CListGroupItem>
                <CListGroupItem>故障停机</CListGroupItem>
                <CListGroupItem>启动状态时间</CListGroupItem>
                <CListGroupItem>冷启动状态时间</CListGroupItem>
              </CListGroup>
            </CCol>
            <CCol sm="8" lg="8">
              <CListGroup flush>
                <CListGroupItem
                  ><div class="rectangle" :style="{width: timeInfo.standby + 'px'}" style="max-width: 300px;min-width: 30px;">
                    {{ timeInfo.standby }}h
                  </div></CListGroupItem
                >
                <CListGroupItem
                  ><div class="rectangle" :style="{width: timeInfo.self_check + 'px'}" style="max-width: 300px;min-width: 30px;;">
                    {{ timeInfo.self_check }}h
                  </div></CListGroupItem
                >
                <CListGroupItem
                  ><div class="rectangle" :style="{width: timeInfo.grid_connection + 'px'}" style="max-width: 300px;min-width: 30px;;">
                    {{ timeInfo.grid_connection }}h
                  </div></CListGroupItem
                >
                <CListGroupItem
                  ><div class="rectangle" :style="{width: timeInfo.servicing + 'px'}" style="max-width: 300px;min-width: 30px;;">
                    {{ timeInfo.servicing }}h
                  </div></CListGroupItem
                >
                <CListGroupItem
                  ><div class="rectangle" :style="{width: timeInfo.normal_shoutdown + 'px'}" style="max-width: 300px;min-width: 30px;;">
                    {{ timeInfo.normal_shoutdown }}h
                  </div></CListGroupItem
                >
                <CListGroupItem
                  ><div class="rectangle" :style="{width: timeInfo.failure_shoutdown + 'px'}" style="max-width: 300px;min-width: 30px;;">
                    {{ timeInfo.failure_shoutdown }}h
                  </div></CListGroupItem
                >
                <CListGroupItem
                  ><div class="rectangle" :style="{width: timeInfo.start + 'px'}" style="max-width: 300px;min-width: 30px;;">
                    {{ timeInfo.start }}h
                  </div></CListGroupItem
                >
                <CListGroupItem
                  ><div class="rectangle" :style="{width: timeInfo.cold_start + 'px'}" style="max-width: 300px;min-width: 30px;;">
                    {{ timeInfo.cold_start }}h
                  </div></CListGroupItem
                >
              </CListGroup>
            </CCol>
          </CRow>
        </div>
  </div>
</template>
              
<script>
import { getFanTimeInfo } from "@/api/fan"; //引入接口
import { getCurrentFanId } from "@/store/fan";
export default {
  name: "FanTime",
  data() {
    return {
      timeInfo: {
        id: 1, //id
        fan_id: 1, //风机id
        standby: 1, //待机时间
        self_check: 1, //电池自检时间
        grid_connection: 1, //并网时间
        servicing: 1, //手动维护时间
        normal_shoutdown: 1, //正常停机
        failure_shoutdown: 1, //故障停机
        start: 1, //启动时间
        cold_start: 1, //冷启动时间
      },
    };
  },
  created() {
    this.getFanTimeInfo();
  },
  methods: {
    getFanTimeInfo() {
      const fanId = getCurrentFanId();
      getFanTimeInfo(fanId).then((res) => {
          if (res.code == 200) {
            console.log(res.data);
            this.timeInfo = res.data;
          }
        })
        .catch((err) => {
          console.log(err);
        });
    },
  },
};
</script>
           
           <style scoped>
.rectangle {
  border-radius: 7px;
  position: relative;
  background-image: linear-gradient(
    left,
    rgb(2, 145, 59) 0%,
    rgb(66, 245, 209) 90%
  );
}
</style>