import 'core-js/stable'
import Vue from 'vue'
//import CoreuiVuePro from '@coreui/vue-pro'
import CoreuiVuePro from '../node_modules/@coreui/vue-pro/src/index.js'
import App from './App'
import router from './router/index'
import { iconsSet as icons } from './assets/icons/icons.js'
import store from './store'
import i18n from './i18n.js'
import '@/permission' // permission control

// 引入echarts
import * as echarts from 'echarts'

// import {
//   DatePicker
// } from "element-ui"

import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
import locale from 'element-ui/lib/locale/lang/zh-CN'

Vue.use(CoreuiVuePro)


//Vue.use(DatePicker, { locale })
Vue.use(ElementUI, { locale })


Vue.prototype.$log = console.log.bind(console)

Vue.prototype.$echarts = echarts



new Vue({
  el: '#app',
  router,
  store,
  //CIcon component documentation: https://coreui.io/vue/docs/components/icon
  icons,
  i18n,
  template: '<App/>',
  components: {
    App
  }
})


