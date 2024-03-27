import request from '@/utils/request'

/**
 * 根据风机状态查询风机信息
 */
export function getCollectRTU() {
    return request({
      url: '/api/datato/getCollectRTUInfo',
      method: 'get'
    })
  }