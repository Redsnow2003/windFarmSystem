/**
 * 设置功能接口
 */
 import request from '@/utils/request'

 
/**
 * 根据风场id（wind_farm_id）查询所有停机计划 过滤掉结束时间小于当前时间的计划 数据表为stop_plan
 * 
 * params:Object{windFarmId:1}
 * 
 * @return Array[fanId,fanNo,fanName,startTime,endTime,reason(1故障维修，0定期检查,2更换部件)] 
 */
 export function getStopFanInfo(windFarmId) {
    return request({
      url: '/api/stopPlan/getStopFanInfo',
      method: 'get',
      params:{windFarmId}//params:Object{windFarmId:1}
    })
  }


  /**
 * 根据风场id（wind_farm_id,日期 date）查询某天的发电计划  数据表为power_plan
 * 
 * params:Object{windFarmId:1，date：2021-8-26}
 * 
 * @return {time_interval，15分钟一个间隔 所以固定一天96个值，power间隔时间内的发电计划功率}
 */
 export function getPowerPlanInfo(params) {
    return request({
      url: '/api/powerPlan/getPowerPlanInfo',
      method: 'get',
      params:params // params:Object{windFarmId:1，date：2021-8-26}
    })
  }