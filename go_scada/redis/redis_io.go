package redis

import (
	"github.com/gin-gonic/gin"
	"github.com/garyburd/redigo/redis"
	"main/logger"
)


// 获取风机信息
func GetWindInfosHandler (c *gin.Context) {
	count, data := GetWindInfos()
	if data == nil {
		c.JSON(200, gin.H{
			"status_code": 201,
			"message":     "获取风机信息失败",
		})
		return
	}
	c.JSON(200, gin.H{
		"status_code": 200,
		"message":		"获取风机信息成功",
		"total":		count,
		"data":			data,
	})
}

func GetWindInfos() (int, []string) {

	redisConn := RedisPool.Get()
	r, err := redis.Strings(redisConn.Do("hmget", "ANALOG.21921","id","name","modbuspara"))
	if err != nil {
		logger.Errorf("redis get failed: %v", err)
		return 0, nil
	}
	return len(r), r
}