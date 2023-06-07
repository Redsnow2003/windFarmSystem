package module

import (
	"github.com/gin-gonic/gin"
	"main/middleware"
	"main/model"
	"net/http"
)


func GetWindFarmInfoHandler(c *gin.Context) {
	// 获取数据库连接
	db := model.Db
	var windFarmInfoList []*model.WindFarmInfo
	db.Model(model.WindFarmInfo{}).Find(&windFarmInfoList)
	c.JSON(http.StatusOK, gin.H{
		"code": http.StatusOK,
		"data": windFarmInfoList,
	})
}

func GetUserWindFarmInfoList(c *gin.Context) {
	// 获取当前用户
	user := middleware.GetCurrentUser(c)
	if user == nil {
		c.JSON(http.StatusOK, gin.H{
			"code": http.StatusOK,
			"data": "当前用户未登录",
		})
		return
	}
	// 获取数据库连接
	db := model.Db
	var windFarmInfoList []*model.WindFarmInfo
	// 判断当前用户是否为中心人员0：中心管理员，1：中心操作员，2：风场管理员，3：风场操作员
	if user.Role == 1 || user.Role == 0 {
		db.Model(model.WindFarmInfo{}).Find(&windFarmInfoList)
		c.JSON(http.StatusOK, gin.H{
			"code": http.StatusOK,
			"data": windFarmInfoList,
		})
	} else {
		db.Model(model.WindFarmInfo{}).Find(&windFarmInfoList, "id = ?", user.WindFarmId)
		c.JSON(http.StatusOK, gin.H{
			"code": http.StatusOK,
			"data": windFarmInfoList,
		})
	}
}

func GetWindFarmInfo(c *gin.Context) {
	windFarmId := c.Query("windFarmId")
	// 获取数据库连接
	db := model.Db
	var windFarmInfo model.WindFarmInfo
	db.Model(model.WindFarmInfo{}).Find(&windFarmInfo, "id = ?", windFarmId)
	c.JSON(http.StatusOK, gin.H{
		"code": http.StatusOK,
		"data": windFarmInfo,
	})
}

func GetFanCount(c *gin.Context) {
	windFarmId := c.Query("windFarmId")
	// 获取数据库连接
	db := model.Db
	var fanCount [7]int64
	db.Model(model.FanInfo{}).Where("wind_farm_id = ?", windFarmId).Count(&fanCount[0])
	db.Model(model.FanInfo{}).Where("wind_farm_id = ? AND status = ?", windFarmId, 0).Count(&fanCount[1])
	db.Model(model.FanInfo{}).Where("wind_farm_id = ? AND status = ?", windFarmId, 1).Count(&fanCount[2])
	db.Model(model.FanInfo{}).Where("wind_farm_id = ? AND status = ?", windFarmId, 2).Count(&fanCount[3])
	db.Model(model.FanInfo{}).Where("wind_farm_id = ? AND status = ?", windFarmId, 3).Count(&fanCount[4])
	db.Model(model.FanInfo{}).Where("wind_farm_id = ? AND status = ?", windFarmId, 4).Count(&fanCount[5])
	db.Model(model.FanInfo{}).Where("wind_farm_id = ? AND status = ?", windFarmId, 5).Count(&fanCount[6])
	c.JSON(http.StatusOK, gin.H{
				"code": http.StatusOK,
				"data": fanCount,
	})
}

func GetFanInfosByWindFarmId(c *gin.Context) {
	windFarmId := c.Query("windFarmId")
	// 获取数据库连接
	db := model.Db
	var fanInfos []*model.FanInfo
	db.Model(model.FanInfo{}).Where("wind_farm_id = ?", windFarmId).Find(&fanInfos)
	c.JSON(http.StatusOK, gin.H{
				"code": http.StatusOK,
				"data": fanInfos,
	})
}

func GetTodayPowerInfo(c *gin.Context) {
	windFarmId := c.Query("windFarmId")
	// 获取数据库连接
	db := model.Db
	var short_power []*interface{}
	var ultra_power []*interface{}
	var real_power []*interface{}
	db.Model(model.PowerInfo{}).Where("wind_farm_id = ?", windFarmId).Select("short_power").Find(&short_power)
	db.Model(model.PowerInfo{}).Where("wind_farm_id = ?", windFarmId).Select("ultra_power").Find(&ultra_power)
	db.Model(model.PowerInfo{}).Where("wind_farm_id = ?", windFarmId).Select("real_power").Find(&real_power)
	c.JSON(http.StatusOK, gin.H{
		"code": http.StatusOK,
		"data": gin.H{
			"short_power": short_power,
			"ultra_power": ultra_power,
			"real_power": real_power,
		},
	})
}

func GetTodayWindSpeedInfo(c *gin.Context) {
	windFarmId := c.Query("windFarmId")
	// 获取数据库连接
	db := model.Db
	var real_wind_speed []*interface{}
	var weather_wind_speed []*interface{}
	db.Model(model.ReaWindInfo{}).Where("wind_farm_id = ? AND height = 50", windFarmId).
		Select("wind_speed").Find(&real_wind_speed)
	db.Model(model.WeatherForecast{}).Where("wind_farm_id = ? AND height = 50", windFarmId).
		Select("wind_speed").Find(&weather_wind_speed)
	c.JSON(http.StatusOK, gin.H{
		"code": http.StatusOK,
		"data": gin.H{
			"real_wind_speed": real_wind_speed,
			"weather_wind_speed": weather_wind_speed,
		},
	})
}

func GetCollWireCountInfo(c *gin.Context) {
	windFarmId := c.Query("windFarmId")
	// 获取数据库连接
	db := model.Db
	var collWireCount [4]int64
	db.Model(model.CollWireInfo{}).Where("wind_farm_id = ?", windFarmId).Count(&collWireCount[0])
	db.Model(model.CollWireInfo{}).Where("wind_farm_id = ? AND status = 0", windFarmId).Count(&collWireCount[1])
	db.Model(model.CollWireInfo{}).Where("wind_farm_id = ? AND status = 1", windFarmId).Count(&collWireCount[2])
	db.Model(model.CollWireInfo{}).Where("wind_farm_id = ? AND status = 2", windFarmId).Count(&collWireCount[3])
	c.JSON(http.StatusOK, gin.H{
		"code": http.StatusOK,
		"data": collWireCount,
	})
}

func GetTowerCountInfo(c *gin.Context) {
	windFarmId := c.Query("windFarmId")
	// 获取数据库连接
	db := model.Db
	var towerCount [4]int64
	db.Model(model.WindTowerInfo{}).Where("wind_farm_id = ?", windFarmId).Count(&towerCount[0])
	db.Model(model.WindTowerInfo{}).Where("wind_farm_id = ? AND status = 0", windFarmId).Count(&towerCount[1])
	db.Model(model.WindTowerInfo{}).Where("wind_farm_id = ? AND status = 1", windFarmId).Count(&towerCount[2])
	db.Model(model.WindTowerInfo{}).Where("wind_farm_id = ? AND status = 2", windFarmId).Count(&towerCount[3])
	c.JSON(http.StatusOK, gin.H{
		"code": http.StatusOK,
		"data": towerCount,
	})
}