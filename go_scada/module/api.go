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
	fanId := c.Query("fanId")
	// 获取数据库连接
	db := model.Db
	var fanInfo model.Fan
	db.Model(model.Fan{}).Where("id = ?", fanId).Find(&fanInfo)
	c.JSON(http.StatusOK, gin.H{
		"code": http.StatusOK,
		"data": fanInfo,
	})
}

// @Summary 获取风机桨叶信息
func GetFanBladeInfo(c *gin.Context) {
	fanId := c.Query("fanId")
	// 获取数据库连接
	db := model.Db
	var fanBladeInfo model.FanBlade
	db.Model(model.FanBlade{}).Where("fan_id = ?", fanId).Find(&fanBladeInfo)
	c.JSON(http.StatusOK, gin.H{
		"code": http.StatusOK,
		"data": fanBladeInfo,
	})
}

// @Summary 获取风机电网信息
func GetFanGridInfo(c *gin.Context) {
	fanId := c.Query("fanId")
	// 获取数据库连接
	db := model.Db
	var fanGridInfo model.FanGrid
	db.Model(model.FanGrid{}).Where("fan_id = ?", fanId).Find(&fanGridInfo)
	c.JSON(http.StatusOK, gin.H{
		"code": http.StatusOK,
		"data": fanGridInfo,
	})
}

// @Summary 获取风机机械信息
func GetFanMachineInfo(c *gin.Context) {
	fanId := c.Query("fanId")
	// 获取数据库连接
	db := model.Db
	var fanMachineInfo model.FanMachine
	db.Model(model.FanMachine{}).Where("fan_id = ?", fanId).Find(&fanMachineInfo)
	c.JSON(http.StatusOK, gin.H{
		"code": http.StatusOK,
		"data": fanMachineInfo,
	})
}

// @Summary 获取风机温度信息
func GetFanTemperatureInfo(c *gin.Context) {
	fanId := c.Query("fanId")
	// 获取数据库连接
	db := model.Db
	var fanTemperatureInfo model.FanTemperature
	db.Model(model.FanTemperature{}).Where("fan_id = ?", fanId).Find(&fanTemperatureInfo)
	c.JSON(http.StatusOK, gin.H{
		"code": http.StatusOK,
		"data": fanTemperatureInfo,
	})
}

// @Summary 获取风机电力统计信息
func GetFanElectricInfo(c *gin.Context) {
	fanId := c.Query("fanId")
	// 获取数据库连接
	db := model.Db
	var fanElectricInfo model.FanElectric
	db.Model(model.FanElectric{}).Where("fan_id = ?", fanId).Find(&fanElectricInfo)
	c.JSON(http.StatusOK, gin.H{
		"code": http.StatusOK,
		"data": fanElectricInfo,
	})
}

// @Summary 获取风机时间统计信息
func GetFanTimeInfo(c *gin.Context) {
	fanId := c.Query("fanId")
	// 获取数据库连接
	db := model.Db
	var fanTimeInfo model.FanTime
	db.Model(model.FanTime{}).Where("fan_id = ?", fanId).Find(&fanTimeInfo)
	c.JSON(http.StatusOK, gin.H{
		"code": http.StatusOK,
		"data": fanTimeInfo,
	})
}

// @Summary 获取风机风向统计信息
func GetFanWindDirectionInfo(c *gin.Context) {
	fanId := c.Query("fanId")
	// 获取数据库连接
	db := model.Db
	var fanWindDirectionInfo []model.FanDirection
	db.Model(model.FanDirection{}).Where("fan_id = ?", fanId).Find(&fanWindDirectionInfo)
	c.JSON(http.StatusOK, gin.H{
		"code": http.StatusOK,
		"data": fanWindDirectionInfo,
	})
}

// @Summary 获取风机参考功率曲线信息
func GetFanReferencePowerInfo(c *gin.Context) {
	fanId := c.Query("fanId")
	// 获取数据库连接
	db := model.Db
	var fan model.Fan
	result := db.Model(model.Fan{}).Where("id = ?", fanId).Find(&fan)
	if result.RowsAffected == 0 {
		c.JSON(http.StatusOK, gin.H{
			"code": http.StatusOK,
			"data": nil,
		})
		return
	}
	var referencePowerInfo []model.ReferencePower
	db.Model(model.ReferencePower{}).Where("type_id = ?", fan.Type).Find(&referencePowerInfo)
	c.JSON(http.StatusOK, gin.H{
		"code": http.StatusOK,
		"data": referencePowerInfo,
	})
}

// @Summary 获取风机功率曲线信息
func GetFanPowerCurveInfo(c *gin.Context) {
	fanId := c.Query("fanId")
	startDate := c.Query("startDate")
	endDate := c.Query("endDate")
	// 获取数据库连接
	db := model.Db
	var fanPowerCurveInfo []model.PowerCurve
	db.Model(model.PowerCurve{}).Where("fan_id = ? And date between ? and ?", fanId, startDate, endDate).Find(&fanPowerCurveInfo)
	c.JSON(http.StatusOK, gin.H{
		"code": http.StatusOK,
		"data": fanPowerCurveInfo,
	})
}