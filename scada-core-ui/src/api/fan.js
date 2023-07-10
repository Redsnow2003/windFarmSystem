import request from '@/utils/request'

/**
 * 根据风机状态查询风机信息
 */
export function getFanList(status) {
  return request({
    url: '/api/fan/getFanList',
    method: 'get',
    params:{status}//相当于status:status,
  })
}

/*
* 根据风机id查询风机信息
* */
export function getFanInfo(fanId) {
  return request({
    url: '/api/fan/getFanInfo',
    method: 'get',
    params:{fanId}//相当于fanId:fanId,
  })
}

/*
* 根据风机id查询风机桨叶信息
* */

export function getFanBladeInfo(fanId) {
  return request({
    url: '/api/fan/getFanBladeInfo',
    method: 'get',
    params:{fanId}//相当于fanId:fanId,
  })
}

/* *
* 根据风机id查询风机电网信息
* */
export function getFanGridInfo(fanId) {
  return request({
    url: '/api/fan/getFanGridInfo',
    method: 'get',
    params:{fanId}//相当于fanId:fanId,
  })
}

/*  *
* 根据风机id查询风机机械信息
* */
export function getFanMachineInfo(fanId) {
  return request({
    url: '/api/fan/getFanMachineInfo',
    method: 'get',
    params:{fanId}//相当于fanId:fanId,
  })
}

/* *
* 根据风机id查询风机温度信息
* */
export function getFanTemperatureInfo(fanId) {
  return request({
    url: '/api/fan/getFanTemperatureInfo',
    method: 'get',
    params:{fanId}//相当于fanId:fanId,
  })
}

/* *
* 根据风机id查询风机电力统计信息
* */
export function getFanElectricInfo(fanId) {
  return request({
    url: '/api/fan/getFanElectricInfo',
    method: 'get',
    params:{fanId}//相当于fanId:fanId,
  })
}

/* *
* 根据风机id查询风机时间统计信息
* */
export function getFanTimeInfo(fanId) {
  return request({
    url: '/api/fan/getFanTimeInfo',
    method: 'get',
    params:{fanId}//相当于fanId:fanId,
  })
}

/* *
* 根据风机id查询风机风向统计信息
* */
export function getFanWindDirectionInfo(fanId) {
  return request({
    url: '/api/fan/getFanWindDirectionInfo',
    method: 'get',
    params:{fanId}//相当于fanId:fanId,
  })
}

/* *
* 根据风机id查询风机参考功率曲线信息
* */
export function getFanReferencePowerInfo(fanId) {
  return request({
    url: '/api/fan/getFanReferencePowerInfo',
    method: 'get',
    params:{fanId}//相当于fanId:fanId,
  })
}

/* *
* 根据风机id 开始日期 结束日期 查询风机功率曲线信息
* */
export function getFanPowerCurveInfo(fanId,startDate,endDate) {
  return request({
    url: '/api/fan/getFanPowerCurveInfo',
    method: 'get',
    params:{fanId,startDate,endDate}//相当于fanId:fanId,
  })
}