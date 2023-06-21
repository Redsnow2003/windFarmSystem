package model

// 用户表
type User struct {
	Id 				uint64 	`gorm:"column:id;primaryKey;autoIncrement;not null" json:"id"`				// 用户id
	UserName 		string 	`gorm:"column:username;type:varchar(255);not null" json:"username"`			// 用户名
	Password 		string 	`gorm:"column:password;type:varchar(255);not null" json:"password"`			// 用户密码
	Name 			string	`gorm:"column:name;type:varchar(255);not null" json:"name"`					// 用户姓名
	Role 			int8 	`gorm:"column:role;type:int;not null" json:"role"`							// 用户角色
	Img				string 	`gorm:"column:img;type:varchar(255)" json:"img"`							// 用户头像
	LoginTime 		string 	`gorm:"column:login_time;type:datetime" json:"login_time"`					// 登录时间
	LogoutTime		string 	`gorm:"column:logout_time;type:datetime" json:"logout_time"`				// 退出时间
}
// 表名
func (User) TableName() string {
	return "user"
}

// 风场表
type WindFarm struct {
	Id 				uint64 	`gorm:"column:id;primaryKey;autoIncrement;not null" json:"id"`				// 风场id
	Name 			string 	`gorm:"column:name;type:varchar(255);not null" json:"name"`					// 风场名称
	WindSpeed 		float32 `gorm:"column:wind_speed;type:float;not null" json:"wind_speed"`			// 风速
	ActivePower 	float32 `gorm:"column:active_power;type:float;not null" json:"active_power"`		// 有功功率
	ReactivePower 	float32 `gorm:"column:reactive_power;type:float;not null" json:"reactive_power"`	// 无功功率
	TotalElectric 	float32 `gorm:"column:total_electric;type:float;not null" json:"total_electric"`	// 总电量
	YearElectric 	float32 `gorm:"column:year_electric;type:float;not null" json:"year_electric"`		// 年电量
	MonthElectric 	float32 `gorm:"column:month_electric;type:float;not null" json:"month_electric"`	// 月电量
	DayElectric 	float32 `gorm:"column:day_electric;type:float;not null" json:"day_electric"`		// 日电量
}
func (WindFarm) TableName() string {
	return "windfarm"
}

// 风机表
type Fan struct {
	Id 				uint64 	`gorm:"column:id;primaryKey;autoIncrement;not null" json:"id"`				// 风机id
	Name 			string 	`gorm:"column:name;type:varchar(255);not null" json:"name"`					// 风机名称
	Power 			float32 `gorm:"column:power;type:float;not null" json:"power"`						// 风机功率
	Status 			int8 	`gorm:"column:status;type:int;not null" json:"status"`						// 风机状态
	Lng 			float32 `gorm:"column:lng;type:float;not null" json:"lng"`							// 风机经度
	Lat 			float32 `gorm:"column:lat;type:float;not null" json:"lat"`							// 风机纬度
	WindSpeed 		float32 `gorm:"column:wind_speed;type:float;not null" json:"wind_speed"`			// 风速
	DayElectric 	float32 `gorm:"column:day_electric;type:float;not null" json:"day_electric"`		// 日电量
}
func (Fan) TableName() string {
	return "fan"
}