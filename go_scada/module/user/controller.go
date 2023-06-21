package user

import (
	"errors"
	"main/logger"
	"main/model"
	"gorm.io/gorm"
)

// 根据用户名查询用户
func SelelctByUserName(username string) *model.User {
	db := model.Db
	u := model.User{}
	res := db.Where("username = ?", username).First(&u)
	if errors.Is(res.Error, gorm.ErrRecordNotFound) {
		logger.Debugf("Select by username err:" + "未查找到相关数据")
		return nil
	}
	return &u
}

//  获取用户列表
func GetUserByPage(page, pageSize int) (int64, []*model.User) {
	db := model.Db
	var users []*model.User
	var total int64
	db.Model(model.User{}).Count(&total)
	res := db.Limit(pageSize).Offset((page - 1) * pageSize).Find(&users)
	if errors.Is(res.Error, gorm.ErrRecordNotFound) {
		logger.Debugf("Get user by page err:" + "未查找到相关数据")
		return 0, nil
	}
	return total, users
}


