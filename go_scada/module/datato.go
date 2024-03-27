package module

import (
	"main/model"
	"net/http"
	"github.com/gin-gonic/gin"
)

func GetCollectRTU(c *gin.Context) {
	// 获取数据库连接
	db := model.Db2
	var collectRTU []model.RTU
	db.Model(model.RTU{}).Where("type = 0").Find(&collectRTU)
	c.JSON(http.StatusOK, gin.H{
		"code": http.StatusOK,
		"data": collectRTU,
	})
}