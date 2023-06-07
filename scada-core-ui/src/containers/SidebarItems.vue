<script>
export default
 {
  name: 'nav',
  computed: 
  { 
    sidebarItems ()
     {
      return [
        {
        _name: 'CSidebarNav',
        _children: [
          {
            _name: 'CSidebarNavTitle',
            _children: [' ']
          },
          {
            _name: 'CSidebarNavDropdown',
            name: '全风场',
            route: '/windfarm',
            icon: 'cil-globe-alt',
            items: [
              {
                name: '全风场总览',
                to: '/windfarm/windfarmview',
                icon: 'cil-basket'
              },
              {
                name: '全风场地图',
                to: '/windfarm/windfarmmap',
                icon: 'cil-globe-alt'
              },
              {
                name: '全风场列表',
                to: '/windfarm/windfarmlist',
                icon: 'cil-globe-alt'
              },
              {
                name: '全风场查询',
                to: '/windfarm/windfarmquery',
                icon: 'cil-globe-alt'
              },
            ]
          },
          {
            _name: 'CSidebarNavItem',
            name: '单机状况',
            to: '/fanstatus',
            icon: 'cil-indent-increase'
          },
          {
            _name: 'CSidebarNavDropdown',
            name: '设备状态',
            route: '/partstatus',
            icon: 'cil-indent-increase',
            items: [
              {
                name: '转轮',
                icon: 'cil-indent-increase',
                to: '/partstatus/wheel'
              },
              {
                name: '传动',
                icon: 'cil-indent-increase',
                to: '/partstatus/drive'
              },
              {
                name: '发电机',
                icon: 'cil-indent-increase',
                to: '/partstatus/generator'
              },
              {
                name: '偏航',
                icon: 'cil-indent-increase',
                to: '/partstatus/yaw'
              },
              {
                name: '机舱',
                icon: 'cil-indent-increase',
                to: '/partstatus/engineroom'
              },
              {
                name: '变频器',
                icon: 'cil-indent-increase',
                to: '/partstatus/frequency'
              },
              {
                name: '电网',
                icon: 'cil-indent-increase',
                to: '/partstatus/powergrid'
              },
              {
                name: '塔基',
                icon: 'cil-indent-increase',
                to: '/partstatus/foundation'
              },
              {
                name: '其他设备',
                icon: 'cil-indent-increase',
                to: '/partstatus/other'
              },
            ]
          },
          {
            _name: 'CSidebarNavItem',
            name: '统计数据',
            to: '/statistics',
            icon: 'cil-indent-increase'
          },
          {
            _name: 'CSidebarNavItem',
            name: '实时趋势',
            to: '/realtime',
            icon: 'cil-indent-increase'
          },
          {
            _name: 'CSidebarNavItem',
            name: '参数设置',
            to: '/parametersettings',
            icon: 'cil-indent-increase'
          },
          {
            _name: 'CSidebarNavItem',
            name: '故障汇总',
            to: '/faultsummary',
            icon: 'cil-indent-increase'
          },
          {
            _name: 'CSidebarNavItem',
            name: '手动控制',
            to: '/manualcontrol',
            icon: 'cil-indent-increase'
          },
          {
            _name: 'CSidebarNavItem',
            name: '告警',
            to: '/warning',
            icon: 'cil-indent-increase'
          },
          {
            _name: 'CSidebarNavItem',
            name: '报表',
            to: '/report',
            icon: 'cil-indent-increase'
          },
          ]
    
    }]
  }
  
} 
}
</script>