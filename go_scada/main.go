package main

import (
	"fmt"
	"main/config"
	"main/logger"
	//	"main/model"
	"main/redis"
	"main/service"
)

var configInfo *config.Config

func main() {

	// // 日志测试
	// logger.Debugf("Debugf")
	// logger.Errorf("Errorf")
	// // mysql测试
	// db := model.Db
	// var user model.User
	// db.First(&user)
	// fmt.Printf("db %v\n", user)
	// // redis测试
	redisConn := redis.RedisPool.Get()
	defer redisConn.Close()
	_, err := redisConn.Do("SET", "name", "zhangsan")
	if err != nil {
		fmt.Printf("redis set failed: %v", err)
		return
	}
	fmt.Println("redis set success")
	// // 网络通信测试
	service.StartApi()
}

func init() {
	// 初始化配置文件
	var err error
	configInfo, err = config.InitConfig()
	if err != nil {
		fmt.Printf("Init config err %v", err)
	}
	// 为日志配置文件赋值
	configInit := logger.LogConfig{
		EnableConsole:     configInfo.Log.EnableConsole,
		ConsoleJSONFormat: configInfo.Log.ConsoleJSONFormat,
		ConsoleLevel:      configInfo.Log.ConsoleLevel,
		EnableFile:        configInfo.Log.EnableFile,
		FileJSONFormat:    configInfo.Log.FileJSONFormat,
		FileLevel:         configInfo.Log.FileLevel,
		FileLocation:      configInfo.Log.FileLocation,
		MaxAge:            configInfo.Log.MaxAge,
		MaxSize:           configInfo.Log.MaxSize,
		Compress:          configInfo.Log.Compress,
	}
	// 初始化日志
	err = logger.InitGlobalLogger(configInit)
	if err != nil {
		fmt.Printf("Init logger err %v", err)
	}

}
