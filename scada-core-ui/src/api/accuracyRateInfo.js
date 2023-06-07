/**
 * 准确率接口
 */
 import request from '@/utils/request'

 /**
  * 根据风场id（wind_farm_id）查询准确率信息
  * return {"id":6,"collwireId":1,"date":"2021-07-24T16:00:00.000+00:00","shortRate":84.0,"ultraRate":96.0,"uploadRate":100.0,"windFarmId":1},
  */
 export function getAccuracyRateInfo(params) {
   return request({
     url: '/api/accuracyRate/getAccuracyRate',
     method: 'get',
     params: params//相当于windFarmId:windFarmId,
   })
 }