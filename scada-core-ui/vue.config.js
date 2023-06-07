const port = process.env.port || process.env.npm_config_port || 9258 // dev port 

module.exports = {
  lintOnSave: false,
  runtimeCompiler: true,
  configureWebpack: {
    //Necessary to run npm link https://webpack.js.org/configuration/resolve/#resolve-symlinks
    resolve: {
       symlinks: false
    }
  },
  transpileDependencies: [
    '@coreui/utils'
  ],
  // use this option for production linking
  // publicPath: process.env.NODE_ENV === 'production' ? '/vue/demo/3.1.0' : '/'
  devServer: {
    port: port,
    open: true,
    overlay: {
      warnings: false,
      errors: true
    },
    /**以前的加载mock数据 start */
    //before: require('./mock/mock-server.js')
    /**以前的加载mock数据 end */

    /**现在的用代理访问 start */
    proxy: {
      '/api': {
      //  target: 'http://82.157.12.32:8080/wpfsserver/', // 这个链接是要代理到的api地址
        target: 'http://localhost:8080', // 这个链接是要代理到的api地址 
        changeOrigin: true,
        pathRewrite: {
          '^/api': ''
        }
      }
    }
  /**现在的用代理访问 end */
  },
}
