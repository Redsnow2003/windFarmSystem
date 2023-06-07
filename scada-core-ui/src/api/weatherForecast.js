/**
 * 气象预报数接口
 */
import request from '@/utils/request'



/**
 * 据风场id（wind_farm_id）和日期 查询气象预报数据表weather_forecast
 * @param windFarmId=1&date=2021-08-04
 * @return Array
 */
export function getWeatherForecastInfo(params) {
  return request({
    url: '/api/weatherForecast/getWeatherForecastInfo',
    method: 'get',
    params:params//
  })
}


export function testPostMethod(params) {
  return request({
    url: '/api/user/getData',
    method: 'post',
    data:params//
  })
}

