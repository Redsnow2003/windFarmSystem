/**
 * 上报记录接口
 */
 import request from '@/utils/request'

 
/**
 * 根据风场id（wind_farm_id）日期 固定一天 默认当天 查询上报记录详细信息
 * 
 * params:Object{windFarmId:1} date：2021-8-24
 * 
 * @return Array[time，fileName,fileType,sectionType,method,backStatus,host] 
 */
 export function getReportInfo(params) {
    return request({
      url: '/api/reportInfo/getReportInfo',
      method: 'get',
      params:params//params:Object{windFarmId:1} date：2021-8-24 缺失默认当天
    })
  }