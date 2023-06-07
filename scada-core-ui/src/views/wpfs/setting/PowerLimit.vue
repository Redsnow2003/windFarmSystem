<template>
  <div>
    <el-button @click="drawer = true" type="primary" style="margin-left: 16px"
      >设置开机容量</el-button
    >
    <el-drawer
      title="设置开机容量"
      :visible.sync="drawer"
      :direction="direction"
      :before-close="handleClose"
    >
      <span>
        <CRow>
          <CCol sm="12" lg="7">
            <CCard>
              <CCardBody>
                <el-input
                  placeholder="输入关键字进行过滤"
                  v-model="filterText"
                ></el-input>
                <div class="down-tree">
                  <el-tree
                    class="filter-tree"
                    :filter-node-method="filterNode"
                    show-checkbox
                    node-key="label"
                    :data="dataTree"
                    :props="defaultProps"
                    accordion
                    ref="tree"
                  ></el-tree>
                </div>
              </CCardBody>
            </CCard>
          </CCol>
        </CRow>
        <CRow>
          <CCol sm="12" lg="7">
            <CButton color="light" v-on:click="addFans">添加=》</CButton>
            <CButton color="light" v-on:click="removeFans">删除《=</CButton>
            <CButton color="light" v-on:click="removeAllFans">清空</CButton>
          </CCol>
        </CRow>
        <CRow>
          <CCol sm="12" lg="7">
            <div class="down-tree">
              <el-tree
                show-checkbox
                :data="dataFan"
                node-key="label"
                :props="defaultProps"
                ref="treeFan"
              ></el-tree>
            </div>
          </CCol>
          <CCol sm="12" lg="4">
            <el-select v-model="valueSel" placeholder="请选择">
              <el-option
                v-for="item in optionsSel"
                :key="item.value"
                :label="item.label"
                :value="item.value"
              >
              </el-option>
            </el-select>
            <el-input-number
              v-model="numPower"
              label="限制功率"
            ></el-input-number>
            <el-tooltip
              :v-model="visibleTip"
              effect="dark"
              content="请先选择要设置的风机"
              placement="top"
              manual
            >
              <el-button v-on:click="setPower">设置</el-button>
            </el-tooltip>
          </CCol>
        </CRow>
      </span>
    </el-drawer>

    <CRow>
      <CCol>
        <CDataTable
          :items="dataFanLimit"
          :fields="fields"
          :items-per-page="16"
          hover
          sorter
          pagination
        >
          <template #limitStatus="{ item }">
            <td v-if="item.limitStatus == 0" style="color: green">开机</td>
            <td v-else-if="item.limitStatus == 1" style="color: blue">
              限功率
            </td>
            <td v-else-if="item.limitStatus == 2" style="color: gray">关机</td>
          </template>
          <template #limitPower="{ item }">
            <td v-if="item.limitStatus == 0"></td>
            <td v-else-if="item.limitStatus == 1">{{ item.limitPower }}kW</td>
            <td v-else-if="item.limitStatus == 2"></td>
          </template>
        </CDataTable>
      </CCol>
    </CRow>
  </div>
</template>

<script>
import { getCollWireInfo } from "@/api/collWireInfo";
import { getFanByColwire } from "@/api/faninfo";
import { getFarmId } from "@/utils/auth";
export default {
  name: "powerLimit",
  watch: {
    filterText(val) {
      this.$refs.tree.filter(val);
    },
  },
  data() {
    return {
      optionsSel: [
        {
          value: "0",
          label: "正常",
        },
        {
          value: "1",
          label: "限功率",
        },
        {
          value: "2",
          label: "关机",
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
        { key: "limitStatus", label: "容量状态" },
        { key: "limitPower", label: "限制功率" },
      ],
      farmId: null,
      filterText: "",
      dataTree: [],
      dataFanLimit: [],
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
      this.$confirm("确认关闭？")
        .then(() => {
          done();
        })
        .catch(() => {});
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
      getFanByColwire({ windFarmId: this.farmId })
        .then((response) => {
          this.dataFanLimit = response.data;
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
<style>
.down-tree {
  height: 300px;
  display: block;
  overflow-y: scroll;
}
</style>
