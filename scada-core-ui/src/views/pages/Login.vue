<template>
  <div class="c-app flex-row align-items-center" :class="{ 'c-dark-theme': $store.state.darkMode }">
    <CContainer>
      <CRow class="justify-content-center">
        <CCol md="8" lg="4">
          <CCard class="p-4">
            <CCardBody>
              <CForm>
                <h1>风电场中央中控系统</h1>
                <CInput placeholder="用户账号" v-model="account">
                  <template #prepend-content>
                    <CIcon name="cil-user" />
                  </template>
                </CInput>
                <CInput placeholder="密码" type="password" v-model="pwd">
                  <template #prepend-content>
                    <CIcon name="cil-lock-locked" />
                  </template>
                </CInput>
                <CRow>
                  <CCol col="24" class="text-left">
                    <CButton color="primary" class="px-4" v-on:click="login">登录</CButton>
                  </CCol>
                </CRow>
              </CForm>
            </CCardBody>
          </CCard>
        </CCol>
      </CRow>
    </CContainer>
  </div>
</template>

<script>
import { setUserId, setAccount,setFarmId,setToken} from "@/utils/auth"; // get token from cookie
import { login } from "@/api/user";

export default {
  name: "Login",
  data() {
    return {
      account: "",
      pwd: ""
    };
  },
  methods: {
    login() {
      login({
        Account: this.account,
        Password: this.pwd
      })
        .then(response => {
          var userObj = response.data;
          var token = response.token;
          setUserId(userObj.id);
          setAccount(userObj.account);
          setFarmId(userObj.windFarmId);
          setToken(token);
          this.$store.state.token = token;
          this.$store.state.userName = userObj.name;
          this.$store.state.role = userObj.role;
          if(userObj.role==0||userObj.role==1)
            this.$router.push({ path: this.redirect || "/" });
          else
            this.$router.push({ path: this.redirect || "/windfarm/windfarmmap" });
        })
        .catch(error => {
          console.log(error);
        });
    }
  }
};
</script>
