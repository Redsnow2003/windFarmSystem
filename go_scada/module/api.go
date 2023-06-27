package module

import (
	"main/model"
	"net/http"

	"github.com/gin-gonic/gin"
)

// @Summary 获取风场信息
func GetWindFarmInfo(c *gin.Context) {
	// 获取数据库连接
	db := model.Db
	var windFarmInfo model.WindFarm
	db.Model(model.WindFarm{}).Find(&windFarmInfo)
	c.JSON(http.StatusOK, gin.H{
		"code": http.StatusOK,
		"data": windFarmInfo,
	})
}

// @Summary 获取风机列表
func GetFanList(c *gin.Context) {
	// 获取数据库连接
	db := model.Db
	var fanList []model.Fan
	db.Model(model.Fan{}).Find(&fanList)
	c.JSON(http.StatusOK, gin.H{
		"code": http.StatusOK,
		"data": fanList,
	})
}

// @Summary 获取风机信息
func GetFanInfo(c *gin.Context) {
	fanId := c.Param("fanId")
	// 获取数据库连接
	db := model.Db
	var fanInfo model.Fan
	db.Model(model.Fan{}).Find(&fanInfo).Where("fan_id = ?", fanId)
	c.JSON(http.StatusOK, gin.H{
		"code": http.StatusOK,
		"data": fanInfo,
	})
}

// @Summary 获取风机桨叶信息
func GetFanBladeInfo(c *gin.Context) {
	fanId := c.Param("fanId")
	// 获取数据库连接
	db := model.Db
	var fanBladeInfo model.FanBlade
	db.Model(model.FanBlade{}).Find(&fanBladeInfo).Where("fan_id = ?", fanId)
	c.JSON(http.StatusOK, gin.H{
		"code": http.StatusOK,
		"data": fanBladeInfo,
	})
}

// @Summary 获取风机电网信息
func GetFanGridInfo(c *gin.Context) {
	fanId := c.Param("fanId")
	// 获取数据库连接
	db := model.Db
	var fanGridInfo model.FanGrid
	db.Model(model.FanGrid{}).Find(&fanGridInfo).Where("fan_id = ?", fanId)
	c.JSON(http.StatusOK, gin.H{
		"code": http.StatusOK,
		"data": fanGridInfo,
	})
}

// @Summary 获取风机机械信息
func GetFanMachineInfo(c *gin.Context) {
	fanId := c.Param("fanId")
	// 获取数据库连接
	db := model.Db
	var fanMachineInfo model.FanMachine
	db.Model(model.FanMachine{}).Find(&fanMachineInfo).Where("fan_id = ?", fanId)
	c.JSON(http.StatusOK, gin.H{
		"code": http.StatusOK,
		"data": fanMachineInfo,
	})
}

// @Summary 获取风机温度信息
func GetFanTemperatureInfo(c *gin.Context) {
	fanId := c.Param("fanId")
	// 获取数据库连接
	db := model.Db
	var fanTemperatureInfo model.FanTemperature
	db.Model(model.FanTemperature{}).Find(&fanTemperatureInfo).Where("fan_id = ?", fanId)
	c.JSON(http.StatusOK, gin.H{
		"code": http.StatusOK,
		"data": fanTemperatureInfo,
	})
}
