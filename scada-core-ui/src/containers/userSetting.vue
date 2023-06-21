<template>
  <CSidebar
    aside
    :show="$store.state.asideShow"
    @update:show="(val) => $store.commit('set', ['asideShow', val])"
    colorScheme="light"
    overlaid
    size="lg"
  >
    <CSidebarClose @click.native="$store.commit('toggle', 'asideShow')" />
    <CTabs tabs class="nav-underline nav-underline-primary">
      <CTab active>
        <template slot="title">
          <CIcon name="cil-list" />
        </template>
        <CListGroup
          class="list-group-accent"
          v-if="$store.state.role == 0 || $store.state.role == 2"
          v-loading="loading"
        >
          <CListGroupItem
            class="
              list-group-item-accent-secondary
              bg-light
              font-weight-bold
              text-muted text-uppercase
              small
            "
          >
            <el-row>
              <el-col :span="16">用户管理</el-col>
              <el-col :span="8">
                <el-button
                  type="success"
                  icon="el-icon-plus"
                  size="mini"
                  class="float-right"
                  @click="showAdd = !showAdd"
                ></el-button>
              </el-col>
            </el-row>
          </CListGroupItem>
          <CListGroupItem
            class="list-group-item-accent-warning list-group-item-divider"
            v-show="showAdd"
          >
            <el-row>
              <el-col>
                <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="basiaddon3">账号</span>
                  </div>
                  <input
                    type="text"
                    class="form-control"
                    aria-describedby="basiaddon3"
                    v-model="newUserAcct"
                  />
                </div>
              </el-col>
            </el-row>
            <el-row>
              <el-col>
                <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="basiaddon3">姓名</span>
                  </div>
                  <input
                    type="text"
                    class="form-control"
                    aria-describedby="basiaddon3"
                    v-model="newUserName"
                  />
                </div>
              </el-col>
            </el-row>
            <CButton color="warning" @click="addUser()">确定</CButton>
          </CListGroupItem>

          <CListGroupItem
            v-for="item in userInfoArry"
            :key="item.id"
            class="list-group-item-accent-warning list-group-item-divider"
            v-show="item.show == true"
          >
            <el-row>
              <el-col :span="4">
                <div class="c-avatar">
                  <img class="c-avatar-img" :src="item.userPic" />
                </div>
              </el-col>
              <el-col :span="12">
                <div>{{ item.userName }}({{ item.acct }})</div>
              </el-col>
              <el-col :span="8">
                <el-button
                  type="danger"
                  icon="el-icon-delete"
                  size="mini"
                  class="float-right"
                  @click="item.pop = true"
                ></el-button>
              </el-col>
            </el-row>
            <el-row v-show="item.pop">
              <el-col :span="12">
                <p>确定删除用户吗？</p>
              </el-col>
              <el-col :span="6">
                <el-button type="primary" size="mini" @click="deleteUser(item)"
                  >确定</el-button
                >
              </el-col>
              <el-col :span="6">
                <el-button size="mini" type="text" @click="item.pop = false"
                  >取消</el-button
                >
              </el-col>
            </el-row>
          </CListGroupItem>
        </CListGroup>
        <CListGroup>
          <CListGroupItem
            class="
              list-group-item-accent-secondary
              bg-light
              text-center
              font-weight-bold
              text-muted text-uppercase
              small
            "
            >修改信息</CListGroupItem
          >
          <CListGroupItem
            class="list-group-item-accent-warning list-group-item-divider"
          >
            <el-row>
              <el-col>
                <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="basiaddon3">旧密码</span>
                  </div>
                  <input
                    type="password"
                    class="form-control"
                    aria-describedby="basiaddon3"
                    v-model="oldPwd"
                  />
                </div>
              </el-col>
            </el-row>
            <el-row>
              <el-col>
                <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="basiaddon3">新密码</span>
                  </div>
                  <input
                    type="password"
                    class="form-control"
                    aria-describedby="basiaddon3"
                    v-model="newPwd1"
                  />
                </div>
              </el-col>
            </el-row>
            <el-row>
              <el-col>
                <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text" id="basiaddon3">新密码</span>
                  </div>
                  <input
                    type="password"
                    class="form-control"
                    aria-describedby="basiaddon3"
                    v-model="newPwd2"
                  />
                </div>
              </el-col>
            </el-row>
            <el-row>
              <el-col :span="12">
                <CButton color="warning" @click="changePwd()">提交修改</CButton>
              </el-col>
            </el-row>
          </CListGroupItem>
        </CListGroup>
      </CTab>
    </CTabs>
  </CSidebar>
</template>

<script>
import {
  getAllUserInfo,
  postDeleteUser,
  addNewUser,
  checkPassword,
  changePassword,
} from "@/api/user";
import { Message } from "element-ui";
export default {
  name: "userSetting",
  data() {
    return {
      farmId: null,
      userId: null,
      userInfoArry: [],
      showAdd: false,
      newUserName: "",
      newName: "",
      loading: false,
      oldPwd: "",
      newPwd1: "",
      newPwd2: "",
    };
  },
  created() {
    //this.setFarmId(getFarmId());
    //this.userId = getUserId();
   // this.fetchData();
  },
  methods: {
    changePwd() {
      this.loading = true;
      checkPassword({ userId: this.userId, password: this.oldPwd })
        .then((response) => {
          if (response.data == true) {
            if (this.newPwd1 != this.newPwd2) {
              Message({
                message: "两次输入的新密码不同！",
                type: "error",
                duration: 1 * 1000,
              });
            } else {
              changePassword({ userId: this.userId, password: this.newPwd1 })
                .then((response) => {
                  if (response.data == true) {
                    Message({
                      message: "修改密码成功！",
                      type: "success",
                      duration: 1 * 1000,
                    });
                  } else {
                    Message({
                      message: "修改密码失败！",
                      type: "warning",
                      duration: 1 * 1000,
                    });
                  }
                  this.oldPwd = "";
                  this.newPwd1 = "";
                  this.newPwd2 = "";
                  this.loading = false;
                })
                .catch((error) => {
                  console.log(error);
                  this.oldPwd = "";
                  this.newPwd1 = "";
                  this.newPwd2 = "";
                  this.loading = false;
                });
            }
          } else {
            Message({
              message: "旧密码错误！",
              type: "error",
              duration: 1 * 1000,
            });
          }
          this.loading = false;
        })
        .catch((error) => {
          console.log(error);
          this.loading = false;
        });
    },
    addUser() {
      var temparr = {};
      temparr.username = this.newUserName;
      temparr.name = this.newName;
      if (this.$store.state.role == 0) temparr.role = 1;
      else temparr.role = 3;
      temparr.password = "111111";
      temparr.userPic = "img/avatars/1.jpg";
      temparr.show = true;
      temparr.pop = false;
      this.loading = true;
      addNewUser({
        username: temparr.username,
        name: temparr.name,
        role: temparr.role,
        password: temparr.password,
        img: "1.jpg",
      })
        .then((response) => {
          if (response.data != null) {
            temparr.id = response.data.id;
            this.userInfoArry.push(temparr);
            this.showAdd = false;
            this.newUserName = "";
            this.newName = "";
            this.loading = false;
          }
        })
        .catch((error) => {
          console.log(error);
          this.loading = false;
        });
    },
    deleteUser(item) {
      this.loading = true;
      postDeleteUser({ userId: item.id })
        .then((response) => {
          if (response.data == "删除成功") {
            item.show = false;
            item.pop = false;
          }
          this.loading = false;
        })
        .catch((error) => {
          console.log(error);
          this.loading = false;
        });
    },
    setFarmId(id) {
      this.farmId = id;
    },
    fetchData() {
      getAllUserInfo(this.farmId)
        .then((response) => {
          if (response.data != null) {
            response.data.forEach((element) => {
              var temparr = {};
              temparr.id = element.id;
              temparr.username = element.username;
              temparr.name = element.name;
              temparr.role = element.role;
              temparr.password = element.password;
              temparr.img = "img/avatars/" + element.img;
              temparr.show = true;
              temparr.pop = false;
              this.userInfoArry.push(temparr);
            });
          }
          console.log(this.userInfoArry);
        })
        .catch((error) => {
          console.log(error);
        });
    },
  },
};
</script>
