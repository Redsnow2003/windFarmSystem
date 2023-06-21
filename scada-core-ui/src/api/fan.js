import request from '@/utils/request'

/**
 * 根据风机状态查询风机信息
 */
export function getFanInfo(status) {
  return request({
    url: '/api/fan/getFanInfo',
    method: 'get',
    params:{status}//相当于status:status,
  })
}

