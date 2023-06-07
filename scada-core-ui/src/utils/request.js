import axios from 'axios'
import { Message } from 'element-ui'
import { getToken } from '@/utils/auth'

// create an axios instance
const service = axios.create({
  baseURL: process.env.VUE_APP_BASE_API, // url = base url + request url
  // withCredentials: true, // send cookies when cross-domain requests
  timeout: 5000 // request timeout
})

// request interceptor
service.interceptors.request.use(
  config => {
       config.headers['Authorization'] = 'Bearer '+getToken()
    return config
  },
  error => {
    // do something with request error
    console.log(error) // for debug
    return Promise.reject(error)
  }
)

// response interceptor
service.interceptors.response.use(
  /**
   * If you want to get http information such as headers or status
   * Please return  response => response
  */

  /**
   * Determine the request status by custom code
   * Here is just an example
   * You can also judge the status by HTTP Status Code
   */
  response => {
    const res1 = response.data
    //if the custom code is not 200, it is judged as an error.
    if (res1.code !== 200) {
      Message({
        message: res1.data.message || 'Error',
        type: 'error',
        duration: 1 * 1000
      })
      return Promise.reject(new Error(res1.data.message || 'Error'))
    } else {
      console.log(res1.data)
      return res1
    }
  },
  error => {
    console.log('err' + error) // for debug
    Message({
      message: error.message,
      type: 'error',
      duration: 1 * 1000
    })
    return Promise.reject(error)
  }
)

export default service
