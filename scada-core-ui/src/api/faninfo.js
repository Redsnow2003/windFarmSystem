/**
 * 风机数量接口
 */
import request from '@/utils/request'

/**
 * 根据风场id（wind_farm_id）查询风机数量
 * @return Array[1,2,4,5,6] 0:正常；1启动中；2通讯中断；3待机等风；4维护停机；5故障停机
 */
export function getFanInfoNum(windFarmId) {
  return request({
    url: '/api/fanInfo/getFanInfoNum',
    method: 'get',
    params:{windFarmId}//相当于windFarmId:windFarmId,
  })
}

/**
 * 根据风场id（wind_farm_id,ColwireId）查询风机详细信息 ColwireId不存在的时候返回风场全部风机
 * @return 【id,fanNo,fanName,power,status,hubWork,windSpeed,windDirection,hubHeight,temperature,humidity,atmosphere,isPrototype(是否是样机)】
 */
 export function getFanByColwire(params) {
  return request({
    url: '/api/fanInfo/getFanByColwire',
    method: 'get',
    params:params//windFarmId,ColwireId不存在的时候返回风场全部风机
  })
}


/**
 * 根据风场id（wind_farm_id）查询风机信息
 * 返回该风场下所有风机信息
 */
  export function getFanInfosByWindFarmId(windFarmId) {
    return request({
      url: '/api/fanInfo/getFanInfosByWindFarmId',
      method: 'get',
      params:{windFarmId}//相当于windFarmId:windFarmId,
    })
  }


