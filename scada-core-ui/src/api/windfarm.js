import request from '@/utils/request'
/**
 * 获取风场信息
 */
export function getWindFarmInfo() {
  return request({
    url: '/api/windFarm/getWindFarmInfo',
    method: 'get'
  })
}