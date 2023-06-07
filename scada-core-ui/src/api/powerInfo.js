/**
 * 功率接口
 */
import request from '@/utils/request'

/**
 * 根据风场id（wind_farm_id）查询今日功率
 * @return Array
 */
export function getTodayPowerInfo(params) {
  return request({
    url: '/api/powerInfo/getTodayPowerInfo',
    method: 'get',
    params:params//{windFarmId}//相当于windFarmId:windFarmId,
  })
}
/**
 * 根据风厂id和日期查询  短期预测功率、超短期预测功率、实际功率  实际风速、预测风速
 * @param windFarmId=1&date=2021-08-04
 * @return Array
 */
export function getShortAndUltraPowerAndSpeedNum(params) {
  return request({
    url: '/api/powerInfo/getShortAndUltraPowerAndSpeedNum',
    method: 'get',
    params:params//
  })
}


