import Vue from 'vue'
import Router from 'vue-router'

// Containers
const TheContainer = () => import('@/containers/TheContainer')

const WindFarmOverview = () => import('@/views/scada/windfarm/windfarmview')
const WindFarmMap = () => import('@/views/scada/windfarm/windfarmmap')

const FanStatus = () => import('@/views/scada/fanstatus/fanstatus')

const PartStatusWheel = () => import('@/views/scada/partstatus/wheel')
const PartStatusDrive = () => import('@/views/scada/partstatus/drive')
const PartStatusGenerator = () => import('@/views/scada/partstatus/generator')
const PartStatusYaw = () => import('@/views/scada/partstatus/yaw')
const PartStatusEngineroom = () => import('@/views/scada/partstatus/engineroom')
const PartStatusFrequency = () => import('@/views/scada/partstatus/frequency')
const PartStatusPowergrid = () => import('@/views/scada/partstatus/powergrid')
const PartStatusFoundation = () => import('@/views/scada/partstatus/foundation')
const PartStatusOther = () => import('@/views/scada/partstatus/other')

const Statistics = () => import('@/views/scada/statistics/statistics')
const Realtime = () => import('@/views/scada/realtime/realtime')
const ParameterSettings = () => import('@/views/scada/parametersettings/parametersettings')
const FaultSummary = () => import('@/views/scada/faultsummary/faultsummary')
const ManualControl = () => import('@/views/scada/manualcontrol/manualcontrol')
const Warning = () => import('@/views/scada/warning/warning')
const Report = () => import('@/views/scada/report/report')

Vue.use(Router)

var router = new Router({
  //mode: 'hash', // https://router.vuejs.org/api/#mode
  linkActiveClass: 'open active',
  scrollBehavior: () => ({ y: 0 }),
  routes: [
    {
      path: '/login',
      component: () => import('@/views/pages/Login'),
      hidden: true
    },
    {
      path: '/',
      redirect: '/windfarm/WindFarmview',
      name: '风电场中央中控系统',
      component: TheContainer,
      children: [
        {
          path: 'windfarm',
          redirect: '/windfarm/WindFarmview',
          name: '全风场',
          component: {
            render (c) { return c('router-view') }
          },
          children: [
            {
              path: '/windfarm/WindFarmview',
              name: '总览',
              component: WindFarmOverview
            },
            {
              path: '/windfarm/windfarmmap',
              name: '地图',
              component: WindFarmMap
            }
          ]
        },
        {
          path: 'FanStatus',
          name: '单机状况',
          component: FanStatus
        },
        {
          path: 'partstatus',
          redirect: '/partstatus/wheel',
          name: '设备状态',
          component: {
            render (c) { return c('router-view') }
          },
          children: [
            {
              path: '/partstatus/Wheel',
              name: '转轮',
              component: PartStatusWheel
            },
            {
              path: '/partstatus/Drive',
              name: '传动',
              component: PartStatusDrive
            },
            {
              path: '/partstatus/Generator',
              name: '发电机',
              component: PartStatusGenerator
            },
            {
              path: '/partstatus/Yaw',
              name: '偏航',
              component: PartStatusYaw
            },
            {
              path: '/partstatus/Engineroom',
              name: '机舱',
              component: PartStatusEngineroom
            },
            {
              path: '/partstatus/Frequency',
              name: '变频器',
              component: PartStatusFrequency
            },
            {
              path: '/partstatus/Powergrid',
              name: '电网',
              component: PartStatusPowergrid
            },
            {
              path: '/partstatus/Foundation',
              name: '塔基',
              component: PartStatusFoundation
            },
            {
              path: '/partstatus/Other',
              name: '其他设备',
              component: PartStatusOther
            }
          ]
        },
        {
          path: 'Statistics',
          name: '统计数据',
          component: Statistics
        },
        {
          path: 'Realtime',
          name: '实时趋势',
          component: Realtime
        },
        {
          path: 'ParameterSettings',
          name: '参数设置',
          component: ParameterSettings
        },
        {
          path: 'FaultSummary',
          name: '故障汇总',
          component: FaultSummary
        },
        {
          path: 'ManualControl',
          name: '手动控制',
          component: ManualControl
        },
        {
          path: 'Warning',
          name: '告警',
          component: Warning
        },
        {
          path: 'Report',
          name: '报表',
          component: Report
        },
      ]
    }
  ]
})

export default router;