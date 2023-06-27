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