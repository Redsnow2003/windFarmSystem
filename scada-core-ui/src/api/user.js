import request from '@/utils/request'

/**
 * 发送用户账号和密码登录系统
 * 
 * params:Object{username:zhangsan，password：123456}
 * 
 * @return {backInfo（success成功，passwordError密码错误，noUser用户不存在）}
 */
export function login(params) {
  return request({
    url: '/api/login',
    method: 'post',
    data: {
      username:  params.UserName,
      password: params.Password
    }
  })
}