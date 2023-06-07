/**
 * 测风数据接口
 */
import request from '@/utils/request'

/**
 * 据风场id（wind_farm_id）查询测风数据rea_wind_info与天气预报风速的数据
 * @return Array
 */
export function getTodayWindSpeed(params) {
  return request({
    url: '/api/reaWindInfo/getTodayWindSpeed',
    method: 'get',
    params:params//{windFarmId}//相当于windFarmId:windFarmId,
  })
}
/**
 * 据风场id（wind_farm_id）测风塔id 日期 获取当天测风塔数据
 * @return Array 返回一天的测风数据
 * 字段（id，wind_farm_id,tower_id,time,height（层高）,wind_speed,wind_direction(风向)
 * temperature（温度）,humidity（湿度）,atmosphere（大气压）,is_fan_wheel_hei（是否是轮毂高度））
 */

 export function getReaWindInfo(params) {
  return request({
    url: '/api/reaWindInfo/getReaWindInfo',
    method: 'get',
    params:params//{windFarmId，tower_id,date}//传入参数 风场id 测风塔id 日期 具体一天
  })
}

/**
 * 据风场id（wind_farm_id）测风塔id 时间 获取一个时间点的测风塔数据  不传入时间参数时 默认最新时间
 * @return Array 返回一个具体时间点的测风数据 共四条 按层高10,30,50,80
 * 字段（id，wind_farm_id,tower_id,time,height（层高）,wind_speed,wind_direction(风向)
 * temperature（温度）,humidity（湿度）,atmosphere（大气压）,is_fan_wheel_hei（是否是轮毂高度））
 */

 export function getLatestRealWindInfoData(params) {
  return request({
    url: '/api/reaWindInfo/getLatestRealWindInfoData',
    method: 'get',
    params:params//{windFarmId，tower_id,time}//传入参数 风场id 测风塔id 时间点（没有这个参数时，返回最新一个时间点的数据）
  })
}