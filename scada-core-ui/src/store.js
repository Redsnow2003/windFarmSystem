import Vue from 'vue'
import Vuex from 'vuex'
Vue.use(Vuex)

const state = {
  sidebarShow: 'responsive',
  sidebarMinimize: false,
  asideShow: false,
  darkMode: true,
  userAcct:"",    //用户账号
  userName: "",           //用户姓名名
  picName: "",      //用户头像
  role: 0,              //登录用户的权限
  newrouter: [],          //过滤好的路由规则
  token: "",              //登录用户的token
}

const mutations = {


  // 保存用户名到vuex
  SET_USERNAME(state, username) {
    state.userName = username
  } ,
// 保存权限到vuex
SET_ROLE(state, role) {
    state.role = role;
},
// 保存路由规则vuex
SET_NEWROUTER(state, newrouter) {
    state.newrouter = newrouter;
},

  ////

  toggleSidebarDesktop (state) {
    const sidebarOpened = [true, 'responsive'].includes(state.sidebarShow)
    state.sidebarShow = sidebarOpened ? false : 'responsive'
  },
  toggleSidebarMobile (state) {
    const sidebarClosed = [false, 'responsive'].includes(state.sidebarShow)
    state.sidebarShow = sidebarClosed ? true : 'responsive'
  },
  set (state, [variable, value]) {
    state[variable] = value
  },
  toggle (state, variable) {
    state[variable] = !state[variable]
  }
}

export default new Vuex.Store({
  state,
  mutations
})