<template>
  <CHeader with-subheader>
    <CToggler
      in-header
      class="ml-3 d-lg-none"
      @click="$store.commit('toggleSidebarMobile')"
    />
    <CToggler
      in-header
      class="ml-3 d-md-down-none"
      @click="$store.commit('toggleSidebarDesktop')"
    />
    <CHeaderBrand class="mx-auto d-lg-none" to="/">
      <CIcon name="logo" height="48" alt="Logo"/>
    </CHeaderBrand>
    <CHeaderNav class="d-md-down-none mr-auto" >
      <div style="color:#36b3b3;">{{ nowTime }}</div>
    </CHeaderNav>
    <CHeaderNav>
      <TheHeaderDropdownAccnt/>
      <CHeaderNavItem class="px-3">
        <button
          class="c-header-nav-btn"
          @click="$store.commit('toggle', 'asideShow')"
        >
          <CIcon size="lg" name="cil-applications-settings" class="mr-2"/>
        </button>
      </CHeaderNavItem>
    </CHeaderNav>
  </CHeader>
</template>

<script>
import TheHeaderDropdownAccnt from './TheHeaderDropdownAccnt'

export default {
  name: 'TheHeader',
  components: {
    TheHeaderDropdownAccnt
  },
  data() {
    return {
      nowTime: ''
    }
  },
  created() {
    this.showTimes();
  },
  methods: {
    //  显示当前时间
    timeFormate() {
      var timeStamp = new Date();
      let year = timeStamp.getFullYear();
      let month =
      timeStamp.getMonth() + 1 < 10
          ? "0" + (timeStamp.getMonth() + 1)
          : timeStamp.getMonth() + 1;
      let date =
        timeStamp.getDate() < 10
          ? "0" + timeStamp.getDate()
          : timeStamp.getDate();
      let hh =
        timeStamp.getHours() < 10
          ? "0" + timeStamp.getHours()
          : timeStamp.getHours();
      let mm =
        timeStamp.getMinutes() < 10
          ? "0" + timeStamp.getMinutes()
          : timeStamp.getMinutes();
      let ss =
        timeStamp.getSeconds() < 10
          ? "0" + timeStamp.getSeconds()
          : timeStamp.getSeconds();
      let week = timeStamp.getDay();
      let weeks = ["日", "一", "二", "三", "四", "五", "六"];
      let getWeek = "星期" + weeks[week];
      this.nowTime=
        year +
        "年" +
        month +
        "月" +
        date +
        "日" +
        " " +
        hh +
        ":" +
        mm +
        ":" +
        ss +
        " " +
        getWeek;
    },
    showTimes() {
      setInterval(this.timeFormate, 1000);
    },
    clear() {
      clearInterval(this.showTimes);
      this.nowTime= null;
    },
  },
}
</script>
