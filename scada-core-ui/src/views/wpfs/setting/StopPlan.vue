<template>
  <div>
    <el-button @click="drawer = true" type="primary" style="margin-left: 16px"
      >设置检修机组</el-button
    >
    <el-drawer
      title="设置检修机组"
      :visible.sync="drawer"
      :direction="direction"
      :before-close="handleClose"
    >
      <span>
        <el-row :gutter="10">
          <el-col :span="9">
            <el-input
              placeholder="输入关键字进行过滤"
              v-model="filterText"
            ></el-input>
            <el-scrollbar class="SideBar-scrollbar">
          
              <el-tree
               :style="{height: '300px'}"
                class="filter-tree"
                :filter-node-method="filterNode"
                show-checkbox
                node-key="label"
                :data="dataTree"
                :props="defaultProps"
                accordion
                ref="tree"
              ></el-tree>
         
            </el-scrollbar>
          </el-col>
          <el-col :span="3">
            <el-row :gutter="20">
              <el-col :span="24">
                <CButton color="light" v-on:click="addFans">添加</CButton>
              </el-col>
            </el-row>
            <el-row :gutter="20">
              <el-col :span="24">
                <CButton color="light" v-on:click="removeFans">删除</CButton>
              </el-col>
            </el-row>
            <el-row :gutter="20">
              <el-col :span="24">
                <CButton color="light" v-on:click="removeAllFans">清空</CButton>
              </el-col>
            </el-row>
          </el-col>
          <el-col :span="9">
            <el-input
              placeholder="输入关键字进行过滤"
              v-model="filterText"
            ></el-input>
            <el-scrollbar class="SideBar-scrollbar">
              <el-tree
                :style="{height: '300px'}"
                show-checkbox
                :data="dataFan"
                node-key="label"
                :props="defaultProps"
                ref="treeFan"
              ></el-tree>
              </el-scrollbar>
          </el-col>
        </el-row>

        <el-row :gutter="10">
          <el-col :span="24">
            <el-date-picker
              v-model="search.date"
              value-format="yyyy-MM-dd "
              type="datetimerange"
              align="right"
              unlink-panels
              range-separator="-"
              start-placeholder="开始日期"
              end-placeholder="结束日期"
              :default-value="this.search.date"
              :picker-options="pickerOptions"
            >
            </el-date-picker>
          </el-col>
        </el-row>
        <el-row :gutter="10">
          <el-col :span="8">
            <el-select v-model="valueSel" placeholder="请选择">
              <el-option
                v-for="item in optionsSel"
                :key="item.value"
                :label="item.label"
                :value="item.value"
              >
              </el-option>
            </el-select>
          </el-col>
          <el-col :span="8">
            <el-button v-on:click="setPower">设置</el-button>
          </el-col>
        </el-row>
      </span>
    </el-drawer>

    <CRow>
      <CCol>
        <CDataTable
          :items="dataFanStop"
          :fields="fields"
          :items-per-page="16"
          hover
          sorter
          pagination
        >
          <template #reason="{ item }">
            <td v-if="item.reason == 0" style="color: green">定期检修</td>
            <td v-else-if="item.reason == 1" style="color: red">故障维修</td>
            <td v-else-if="item.reason == 2" style="color: yellow">更换部件</td>
          </template>
        </CDataTable>
      </CCol>
    </CRow>
  </div>
</template>

<script>
import { getCollWireInfo } from "@/api/collWireInfo";
import { getFanByColwire } from "@/api/faninfo";
import { getStopFanInfo } from "@/api/setting";
import { getFarmId } from "@/utils/auth";
export default {
  name: "stopPlan",
  watch: {
    filterText(val) {
      this.$refs.tree.filter(val);
    },
  },
  data() {
    return {
      search: {
        date: [],
        startDate: new Date(),
        endDate: new Date(),
      },
      pickerOptions: {
        onPick: ({ maxDate, minDate }) => {
          this.search.startDate = minDate;
          this.search.endDate = maxDate;
        },
      },
      optionsSel: [
        {
          value: "0",
          label: "定期检查",
        },
        {
          value: "1",
          label: "故障维修",
        },
        {
          value: "2",
          label: "更换部件",
        },
      ],
      valueSel: "0",
      numPower: 30,
      drawer: false,
      direction: "rtl",
      visibleTip: false,
      fields: [
        { key: "fanNo", label: "风机编号" },
        { key: "fanName", label: "风机名称" },
        { key: "startTime", label: "开始时间" },
        { key: "endTime", label: "结束时间" },
        { key: "reason", label: "停机原因" },
      ],
      farmId: null,
      filterText: "",
      dataTree: [],
      dataFanStop: [],
      dataFan: [],
      defaultProps: {
        children: "children",
        label: "label",
        id: "id",
      },
    };
  },
  created() {
    this.setFarmId(getFarmId());
    this.getFanInfo();
    this.fetchData();
  },

  methods: {
    setPower() {
      if (this.dataFan.length == 0) {
        this.visibleTip = true;
        alert("请先选择要设置的风机!");
        return;
      } else {
        this.drawer = false;
      }
    },
    handleClose(done) {
      // this.$confirm("确认关闭？")
      //   .then((_) => {
      done();
      // })
      // .catch((_) => {});
    },
    setFarmId(id) {
      this.farmId = id;
    },
    addFans() {
      let res = this.$refs.tree.getCheckedKeys(true);
      res.forEach((data) => {
        let fan = {};
        fan.label = data;
        let node = this.$refs.tree.getNode(data);
        console.log(node);
        if (node.visible && node.level == 2) {
          if (this.$refs.treeFan.getNode(data) == null) this.dataFan.push(fan);
        }
      });
    },
    removeFans() {
      let res = this.$refs.treeFan.getCheckedKeys();
      res.forEach((data) => {
        this.$refs.treeFan.remove(this.$refs.treeFan.getNode(data));
      });
    },
    removeAllFans() {
      let res = [];
      this.dataFan.forEach((item) => {
        res.push(item);
      });
      res.forEach((data) => {
        this.$refs.treeFan.remove(this.$refs.treeFan.getNode(data));
      });
    },
    filterNode(value, data) {
      if (!value) {
        return true;
      }
      return data.label.indexOf(value) !== -1;
    },
    getFanInfo() {
      getStopFanInfo(this.farmId)
        .then((response) => {
          this.dataFanStop = response.data;
        })
        .catch((error) => {
          console.log(error);
        });
    },
    fetchData() {
      this.dataTree = [];
      getCollWireInfo(this.farmId)
        .then((response) => {
          if (response.data != null) {
            response.data.forEach((data) => {
              let colwireArr = {};
              colwireArr.label = data.collwireNo;
              colwireArr.id = data.id;
              getFanByColwire({ windFarmId: this.farmId, colWireId: data.id })
                .then((response) => {
                  if (response.data != null) {
                    let fansArr = [];
                    response.data.forEach((data) => {
                      let fanArr = [];
                      fanArr.id = data.id;
                      fanArr.label = data.fanNo;
                      fansArr.push(fanArr);
                    });
                    colwireArr.children = fansArr;
                    this.dataTree.push(colwireArr);
                  } else {
                    this.dataTree.push(colwireArr);
                  }
                })
                .catch((error) => {
                  console.log(error);
                });
            });
          }
        })
        .catch((error) => {
          console.log(error);
        });
    },
  },
};
</script>
