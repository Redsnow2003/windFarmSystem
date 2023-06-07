<template>
  <div>
    <CRow>
      <p v-for="item in dataArr" :key="item">
        <CCol lg="12">
          <el-descriptions
            class="margin-top"
            :title="item.name"
            :column="1"
            :size="mini"
            border
          >
            <el-descriptions-item>
              <template slot="label"> 编号： </template>
              {{ item.towerNo }}
            </el-descriptions-item>
            <el-descriptions-item
              v-if="item.status === 0"
              content-class-name="cr-0"
            >
              <template slot="label"> 状态： </template>
              正常
            </el-descriptions-item>
            <el-descriptions-item
              v-else-if="item.status === 1"
              content-class-name="cr-1"
            >
              <template slot="label"> 状态： </template>
              故障
            </el-descriptions-item>
            <el-descriptions-item
              v-else-if="item.status === 2"
              content-class-name="cr-2"
            >
              <template slot="label"> 状态： </template>
              通讯中断
            </el-descriptions-item>
            <el-descriptions-item>
              <template slot="label"> 高度10米 </template>
              风速：{{ item.m10speed }}米/秒；风向：{{ item.m10dir }}°
            </el-descriptions-item>
            <el-descriptions-item>
              <template slot="label"> 高度30米 </template>
              风速：{{ item.m30speed }}米/秒；风向：{{ item.m30dir }}°
            </el-descriptions-item>
            <el-descriptions-item>
              <template slot="label"> 高度50米 </template>
              风速：{{ item.m50speed }}米/秒；风向：{{ item.m50dir }}°
            </el-descriptions-item>
            <el-descriptions-item>
              <template slot="label"> 高度80米 </template>
              风速：{{ item.m80speed }}米/秒；风向：{{ item.m80dir }}°
            </el-descriptions-item>
          </el-descriptions>
        </CCol>
      </p>
    </CRow>
  </div>
</template>

<script>
import { getWindTowerInfo } from "@/api/windTowerInfo";
import { getLatestRealWindInfoData } from "@/api/reaWindInfo";
import { getFarmId } from "@/utils/auth";
export default {
  name: "towerOverview",
  data() {
    return {
      dataTower: [],
      dataRealWind: [],
      dataArr: [],
      farmId: 1,
      queryTime: "2021-08-04 00:00:00", //new Date(),
      towerId: 1,
    };
  },
  created() {
    this.setFarmId(getFarmId());
    this.fetchData();
  },
  methods: {
    setFarmId(id) {
      this.farmId = id;
    },
    fetchData() {
      getWindTowerInfo(this.farmId)
        .then((response) => {
          this.dataTower = response.data;
          this.dataTower.forEach((data) => {
            this.towerId = data.id;

            // this.queryRealWindInfo(arr, function(parms){

            // } )
            let m10speed = 0;
            let m30speed = 0;
            let m50speed = 0;
            let m80speed = 0;
            let m10dir = 0;
            let m30dir = 0;
            let m50dir = 0;
            let m80dir = 0;
            getLatestRealWindInfoData({
              windFarmId: this.farmId,
              towerId: data.id,
              date: this.parseTime(this.queryTime),
            })
              .then((response) => {
                this.dataRealWind = response.data;
                if (this.dataRealWind.length > 0) {
                  m10speed = this.dataRealWind[0].windSpeed;
                  m30speed = this.dataRealWind[1].windSpeed;
                  m50speed = this.dataRealWind[2].windSpeed;
                  m80speed = this.dataRealWind[3].windSpeed;
                  m10dir = this.dataRealWind[0].windDirection;
                  m30dir = this.dataRealWind[1].windDirection;
                  m50dir = this.dataRealWind[2].windDirection;
                  m80dir = this.dataRealWind[3].windDirection;
                }
                let arr = {
                  name: data.name,
                  towerNo: data.towerNo,
                  status: data.status,
                  m10speed: m10speed,
                  m30speed: m30speed,
                  m50speed: m50speed,
                  m80speed: m80speed,
                  m10dir: m10dir,
                  m30dir: m30dir,
                  m50dir: m50dir,
                  m80dir: m80dir,
                };
                this.dataArr.push(arr);
              })
              .catch((error) => {
                console.log(error);
              });
          });
        })
        .catch((error) => {
          console.log(error);
        });
    },

    parseTime(date) {
      let date1 = new Date(date);
      let year = date1.getFullYear();
      let month = date1.getMonth() + 1;
      let day = date1.getDate();
      let h = date1.getHours();
      let m = date1.getMinutes();
      let s = date1.getSeconds();
      return year + "-" + month + "-" + day + " " + h + ":" + m + ":" + s;
    },
  },
};
</script>

<style>
.cr-0 {
  background: #e1f3d8;
}

.cr-1 {
  background: #fde2e2;
}

.cr-2 {
  background: #d9dad9;
}

.el-descriptions {
  background: rgb(58, 56, 56) !important;
  border-width: 1;
  border-color: red;
  color: #ffffff;
}
</style>