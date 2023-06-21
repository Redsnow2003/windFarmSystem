package module

import (
	"github.com/gin-gonic/gin"
	"main/model"
	"net/http"
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
