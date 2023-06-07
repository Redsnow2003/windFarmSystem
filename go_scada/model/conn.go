package model

import (
	"fmt"
	"gorm.io/driver/mysql"
	"gorm.io/gorm"
	"main/config"
	"main/logger"
)

// 创建mysql连接
func newMysqlConn() *gorm.DB {
	//读取配置文件
	configBase,err := config.InitConfig()
	if err != nil {
		logger.Fatalf("读取配置信息失败：%v",err)
	}
	//连接数据库
	username := configBase.MySqlnd.Username
	password := configBase.MySqlnd.Password
	host 	:= configBase.MySqlnd.Host
	port 	:= configBase.MySqlnd.Port
	database := configBase.MySqlnd.Database
	dsn := fmt.Sprintf("%s:%s@tcp(%s:%s)/%s?charset=utf8mb4&parseTime=True&loc=Local",username,password,host,port,database)
	db,err := gorm.Open(mysql.Open(dsn),&gorm.Config{})
	if err != nil {
		logger.Fatalf("连接数据库失败：%v",err)
		return nil
	}
	sqlDB,_ := db.DB()
	sqlDB.SetMaxIdleConns(20)
	sqlDB.SetMaxOpenConns(100)
	return db
}

var Db *gorm.DB

// 初始化数据库连接
func init() {
	Db = newMysqlConn()
}