/**
 * 集电线接口
 */
import request from '@/utils/request'

/**
 * 根据风场id（wind_farm_id）查询集电线数量
 * [总数，正常数量，通讯中断数量，故障数量]
 */
export function getCollWireCountInfo(windFarmId) {
  return request({
    url: '/api/collWireInfo/getCollWireCountInfo',
    method: 'get',
    params:{windFarmId}//相当于windFarmId:windFarmId,
  })
}

/**
 * 根据风场id（wind_farm_id）查询集电线信息
 * @return {id，collwireNo，status}
 */
 export function getCollWireInfo(windFarmId) {
  return request({
    url: '/api/collWireInfo/getCollWireInfo',
    method: 'get',
    params:{windFarmId}//相当于windFarmId:windFarmId,
  })
}