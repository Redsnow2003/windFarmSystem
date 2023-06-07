import request from '@/utils/request'
/**
 * 获取所有风场信息
 */
export function getWindFarmInfoList() {
  return request({
    url: '/api/windFarmInfo/getWindFarmInfoList',
    method: 'get'
  })
}

/**
 * 根据风场id获取风场信息
 */
export function getWindFarmInfo(windFarmId) {
  return request({
    url: '/api/windFarmInfo/getWindFarmInfo',
    method: 'get',
    params:{windFarmId}//相当于windFarmId:windFarmId,
  })
}
/**
 * 根据当前登录用户角色获取对应风场信息
 */
export function getUserWindFarmInfoList() {
  return request({
    url: '/api/windFarmInfo/getUserWindFarmInfoList',
    method: 'get'
  })
}
