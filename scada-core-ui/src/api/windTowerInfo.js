/**
 * 风塔接口
 */
import request from '@/utils/request'

/**
 * 根据风场id获取风塔数量
 * [总数，正常数量，通讯中断数量，故障数量]
 */
export function getTowerCountInfo(windFarmId) {
  return request({
    url: '/api/windTowerInfo/getTowerCountInfo',
    method: 'get',
    params:{windFarmId}//相当于windFarmId:windFarmId,
  })
}


/**
 * 根据风场id（wind_farm_id）查询风塔详细信息
 * 
 * params:Object{windFarmId:1}
 * 
 * @return Array[测风塔id，测风塔名字name，测风塔编号Tower_no，状态status 0正常，1故障，2通讯中断] 
 */
 export function getWindTowerInfo(windFarmId) {
  return request({
    url: '/api/windTowerInfo/getWindTowerInfo',
    method: 'get',
    params:{windFarmId}//相当于windFarmId:windFarmId,
  })
}