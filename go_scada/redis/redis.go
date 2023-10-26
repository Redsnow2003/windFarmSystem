package redis

import (
	"fmt"
	"github.com/gomodule/redigo/redis"
	"main/config"
)

// redis连接池
var RedisPool *redis.Pool

// 初始化redis
func init() {

	// 读取配置文件
	configBase, err := config.InitConfig()
	if err != nil {
		fmt.Printf("读取配置信息失败：%v", err)
	}
	// 创建redis连接池
	RedisPool = &redis.Pool{
		MaxIdle: 8,				// 最大空闲连接数
		MaxActive: 0,			// 最大连接数，0表示不限制
		IdleTimeout: 100,		// 最大空闲时间
		Dial: func() (redis.Conn, error) {
			return redis.Dial("tcp", fmt.Sprintf("%s:%d", configBase.Redis.Host, configBase.Redis.Port),
			redis.DialPassword(fmt.Sprint(configBase.Redis.Password)))
		},
	}
}