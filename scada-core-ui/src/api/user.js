import request from '@/utils/request'

/**
 * 发送用户账号和密码登录系统
 * 
 * params:Object{account:zhangsan，password：123456}
 * 
 * @return {backInfo（success成功，passwordError密码错误，noUser用户不存在）}
 */
export function login(params) {
  return request({
    url: '/api/login',
    method: 'post',
    data: {
      account:  params.Account,
      password: params.Password
    }
  })
}
/**
 * 发送windfarmid 返回管理员账号下所有用户。中心管理员返回role==1的所有用户信息，风场管理员返回本风场role==3的所有用户信息。
 * 
 * params:{windfarmId}
 * 
 * @return {id，account，name，role，user_pic}
 */
export function getAllUserInfo(windfarmId) {
  return request({
    url: '/api/user/getAllUserInfo',
    method: 'get',
    params:{windfarmId}
  })
}
/**
 * 当前用户退出登录
 */
export function logout() {
  return request({
    url: '/api/user/logout',
    method: 'post'
  })
}

/**
 * 发送userid，role 修改用户权限
 * 
 * params:Object{userId，role}
 * 
 * @return ture false
 */
 export function postChangeUserRole(params) {
  return request({
    url: '/api/user/postChangeUserRole',
    method: 'post',
    data:params//
  })
}

/**
 * 发送userid 删除用户
 * 
 * params:Object{userId:1}
 * 
 * @return ture false
 */
 export function postDeleteUser(params) {
  return request({
    url: '/api/user/postDeleteUser',
    method: 'post',
    data:params//
  })
}

/**
 * 发送userId ,password 修改密码
 * 
 * params:Object{userId,password}
 * 
 * @return ture false
 */
 export function changePassword(params) {
  return request({
    url: '/api/user/postChangeUserPassword',
    method: 'post',
    data:params//
  })
}
/**
 * 发送userId ,password 验证密码
 * 
 * params:Object{userId ,password}
 * 
 * @return ture false
 */
 export function checkPassword(params) {
  return request({
    url: '/api/user/checkPassword',
    method: 'post',
    data:params//
  })
}
/**
 * 发送userid picUrl 上传新头像
 * 
 * params:Object{picUrl}
 * 
 * @return ture false
 */
 export function postUploadPic(params) {
  return request({
    url: '/api/user/postUploadPic',
    method: 'post',
    data:params//
  })
}

/**
 * 发送account,name,password,windFarmId,role,userPic添加新用户
 * 
 * params:Object{account:li name:李 role:1 password:12456 usePic:1.jpg windFarmId: 1}
 * 
 * @return ture false
 */
 export function addNewUser(params) {
  return request({
    url: '/api/user/addNewUser',
    method: 'post',
    data:params//
  })
}