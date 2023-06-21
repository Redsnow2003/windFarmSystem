import router from './router'
import { getUserId,getUserName } from '@/utils/auth' // get token from cooki

const whiteList = ['/login'] // no redirect whitelist

router.beforeEach((to, from, next) => {
  //debugger;
  // start progress bar
  //NProgress.start()

  // set page title
  //document.title = getPageTitle(to.meta.title)

  // determine whether the user has logged in
  const userId = getUserId()
  const username = getUserName()
 
  if (userId&&username) {
    if (to.path === '/login') {
      // if is logged in, redirect to the home page
      next({ path: '/' })
      //NProgress.done()
    } else {
      next()
      // const hasGetUserInfo = store.getters.name
      // if (hasGetUserInfo) {
      //   next()
      // } else {
      //   try {
      //     // get user info
      //     await store.dispatch('user/getInfo')

      //     next()
      //   } catch (error) {
      //     // remove token and go to login page to re-login
      //     await store.dispatch('user/resetToken')
      //     Message.error(error || 'Has Error')
      //     next(`/login?redirect=${to.path}`)
      //     //NProgress.done()
      //   }
      // }
    }
  } else {
    /* has no token*/

    if (whiteList.indexOf(to.path) !== -1) {
      // in the free login whitelist, go directly
      next()
    } else {
      // other pages that do not have permission to access are redirected to the login page.
      next(`/login?redirect=${to.path}`)
      //NProgress.done()
    }
  }
})

router.afterEach(() => {
  // finish progress bar
  //NProgress.done()
})


// router.beforeEach((to, from, next) => {
//   console.log(to.path)
//   next()
// })
// router.afterEach(() => {
//   console.log("router finish")

//   // finish progress bar
//   //NProgress.done()
// })

