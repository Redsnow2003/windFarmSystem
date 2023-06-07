package model

// 测风塔信息
type WindTowerInfo struct {
	Id 				uint64 	`gorm:"column:id;primaryKey;autoIncrement;not null" json:"id"`			// 测风塔id
	Name 			string 	`gorm:"column:name;type:varchar(255);not null" json:"name"`				// 测风塔名
	TowerNo 		string 	`gorm:"column:tower_no;type:varchar(255);not null" json:"tower_no"`		// 测风塔编号
	WindFarmId		uint64 	`gorm:"column:wind_farm_id;type:int;not null" json:"wind_farm_id"`		// 风场id
	Status 			int8 	`gorm:"column:status;type:int;not null" json:"status"`					// 测风塔状态
}

// 表名
func (WindTowerInfo) TableName() string {
	return "wind_tower_info"
}

// 集电线信息表
type CollWireInfo struct {
	Id 				uint64 	`gorm:"column:id;primaryKey;autoIncrement;not null" json:"id"`				// 集电线id
	CollWireNo		string 	`gorm:"column:collwire_no;type:varchar(64);not null" json:"collwire_no"`	// 集电线编号
	WindFarmId 		uint64 	`gorm:"column:wind_farm_id;type:int;not null" json:"wind_farm_id"`			// 风场id
	Status 			int8 	`gorm:"column:status;type:int;not null" json:"status"`						// 集电线状态
}
// 表名
func (CollWireInfo) TableName() string {
	return "coll_wire_info"
}

// 精度表
type AccuracyRate struct {
	Id			uint64	`gorm:"column:id;primaryKey;autoIncrement;not null" json:"id"`		// id
	CollWireId	uint64	`gorm:"column:collwire_id;type:int;not null" json:"collwire_id"`	// 集电线id	
	Date		string	`gorm:"column:date;type:varchar(128);not null" json:"date"`			// 日期
	ShortRate	float32	`gorm:"column:short_rate;type:float;not null" json:"short_rate"`	// 短期精度
	UltraRate	float32	`gorm:"column:ultra_rate;type:float;not null" json:"ultra_rate"`	// 超短期精度
	UploadRate 	float32	`gorm:"column:upload_rate;type:float;not null" json:"upload_rate"`	// 上传精度
}
// 表名
func (AccuracyRate) TableName() string {
	return "accuracy_rate"
}


// 风机信息表
type FanInfo struct {
	Id 				uint64 	`gorm:"column:id;primaryKey;autoIncrement;not null" json:"id"`					// 风机id
	WindFarmId 		uint64 	`gorm:"column:wind_farm_id;type:int;not null" json:"wind_farm_id"`				// 风场id
	CollWireId 		uint64 	`gorm:"column:collwire_id;type:int;not null" json:"collwire_id"`				// 集电线id
	FanNo			string 	`gorm:"column:fan_no;type:varchar(255);not null" json:"fan_no"`					// 风机编号
	FanName 		string 	`gorm:"column:fan_name;type:varchar(255);not null" json:"fan_name"`				// 风机名称
	CoordX 			float32 `gorm:"column:coord_x;type:float;not null" json:"coord_x"`						// 风机坐标x
	CoordY 			float32 `gorm:"column:coord_y;type:float;not null" json:"coord_y"`						// 风机坐标y
	Power			float32 `gorm:"column:power;type:float;not null" json:"power"`							// 功率
	Status 			int8 	`gorm:"column:status;type:int;not null" json:"status"`							// 风机状态
	HubWork 		float32 `gorm:"column:hub_work;type:float;not null" json:"hub_work"`					// 机头出力
	WindSpeed 		float32 `gorm:"column:wind_speed;type:float;not null" json:"wind_speed"`				// 风速
	WindDirection 	float32 `gorm:"column:wind_direction;type:float;not null" json:"wind_direction"`		// 风向
	HubHeight 		float32 `gorm:"column:hub_height;type:float;not null" json:"hub_height"`				// 机头高度
	Temperature 	float32 `gorm:"column:temperature;type:float;not null" json:"temperature"`				// 温度
	Humidity 		float32 `gorm:"column:humidity;type:float;not null" json:"humidity"`					// 湿度
	Atmosphere 		float32 `gorm:"column:atmosphere;type:float;not null" json:"atmosphere"`				// 大气压
	IsPrototype 	int8 	`gorm:"column:is_prototype;type:int;not null" json:"is_prototype"`				// 是否为样机	
	LimitStatus 	int8 	`gorm:"column:limit_status;type:int;not null" json:"limit_status"`				// 限功率状态
	LimitPower 		float32 `gorm:"column:limit_power;type:float;not null" json:"limit_power"`				// 限功率
}

// 表名
func (FanInfo) TableName() string {
	return "fan_info"
}

// 功率表
type PowerInfo struct {
	Id 				int64 	`gorm:"column:id;primaryKey;autoIncrement;not null" json:"id"` 		// id
	WindFarmId 		int64 	`gorm:"column:wind_farm_id;type:int;not null" json:"wind_farm_id"` 	// 集电线id
	Time 			string 	`gorm:"column:time;type:varchar(128);not null" json:"time"` 		// 时间
	ShortPower 		float32 `gorm:"column:short_power;type:float;not null" json:"short_power"` 	// 短期功率
	UltraPower 		float32 `gorm:"column:ultra_power;type:float;not null" json:"ultra_power"` 	// 超短期功率
	RealPower		float32 `gorm:"column:real_power;type:float;not null" json:"real_power"` 	// 实际功率
}

// 表名
func (PowerInfo) TableName() string {
	return "power_info"
}

// 限功率表
type PowerLimit struct {
	Id 				uint64 	`gorm:"column:id;primaryKey;autoIncrement;not null" json:"id"`				// id
	WindFarmId 		uint64 	`gorm:"column:wind_farm_id;type:int;not null" json:"wind_farm_id"`			// 风场id
	FanId 			uint64 	`gorm:"column:fan_id;type:int;not null" json:"fan_id"`						// 风机id
	Status 			int8 	`gorm:"column:status;type:int;not null" json:"status"`						// 限功率状态
	LimitValue 		float32 `gorm:"column:limit_value;type:float;not null" json:"limit_value"`			// 限功率值
}

// 表名
func (PowerLimit) TableName() string {
	return "power_limit"
}

// 发电计划表
type PowerPlan struct {
	Id 				uint64 	`gorm:"column:id;primaryKey;autoIncrement;not null" json:"id"`				// id
	WindFarmId		uint64 	`gorm:"column:wind_farm_id;type:int;not null" json:"wind_farm_id"`			// 风场id
	Date  			string 	`gorm:"column:date;type:varchar(128);not null" json:"date"`					// 日期
	TimeInterval    int8    `gorm:"column:time_interval;type:int;not null" json:"time_interval"`		// 时间间隔
	Power 			float32 `gorm:"column:power;type:float;not null" json:"power"`						// 计划发电量
}

// 表名
func (PowerPlan) TableName() string {
	return "power_plan"
}

// 测风数据表
type ReaWindInfo struct {
	Id 				uint64 	`gorm:"column:id;primaryKey;autoIncrement;not null" json:"id"`				// id
	TowerId 		uint64 	`gorm:"column:tower_id;type:int;not null" json:"tower_id"`					// 测风塔id
	Time 			string 	`gorm:"column:time;type:varchar(128);not null" json:"time"`					// 时间
	Height 			int8	`gorm:"column:height;type:float;not null" json:"height"`					// 高度
	WindSpeed 		float32 `gorm:"column:wind_speed;type:float;not null" json:"wind_speed"`			// 风速
	SpeedAverage 	float32 `gorm:"column:speed_average;type:float;not null" json:"speed_average"`		// 平均风速
	WindDirection 	float32 `gorm:"column:wind_direction;type:float;not null" json:"wind_direction"`	// 风向
	Temperature 	float32 `gorm:"column:temperature;type:float;not null" json:"temperature"`			// 温度
	Humidity		float32 `gorm:"column:humidity;type:float;not null" json:"humidity"`				// 湿度
	Atmosphere 		float32 `gorm:"column:atmosphere;type:float;not null" json:"atmosphere"`			// 大气压
	IsFanWheelHei	int8 	`gorm:"column:is_fan_wheel_hei;type:int;not null" json:"is_fan_wheel_hei"`	// 是否为风轮高度
}

// 表名
func (ReaWindInfo) TableName() string {
	return "rea_wind_info"
}

// 上报信息表
type ReportInfo struct {
	Id 				uint64 	`gorm:"column:id;primaryKey;autoIncrement;not null" json:"id"`				// id
	WindFarmId		uint64 	`gorm:"column:wind_farm_id;type:int;not null" json:"wind_farm_id"`			// 风场id
	CollWireId		uint64 	`gorm:"column:collwire_id;type:int;not null" json:"collwire_id"`			// 集电线id
	Time			string 	`gorm:"column:time;type:varchar(128);not null" json:"time"`					// 时间
	FileName 		string 	`gorm:"column:file_name;type:varchar(255);not null" json:"file_name"`		// 文件名
	FileType		int8	`gorm:"column:file_type;type:int;not null" json:"file_type"`				// 文件类型
	SectionType		string 	`gorm:"column:section_type;type:varchar(255);not null" json:"section_type"`	// 区段类型
	Method			int8 	`gorm:"column:method;type:varchar(255);not null" json:"method"`				// 方法
	BackStatus		int8 	`gorm:"column:back_status;type:int;not null" json:"back_status"`			// 回传状态
	Host			string 	`gorm:"column:host;type:varchar(255);not null" json:"host"`					// 主机
}

// 表名
func (ReportInfo) TableName() string {
	return "report_info"
}

// 停机计划表
type StopPlan struct {
	Id 				uint64 	`gorm:"column:id;primaryKey;autoIncrement;not null" json:"id"`				// id
	WindFarmId 		uint64 	`gorm:"column:wind_farm_id;type:int;not null" json:"wind_farm_id"`			// 风场id
	FanId 			uint64 	`gorm:"column:fan_id;type:int;not null" json:"fan_id"`						// 风机id4
	FanNo 			string 	`gorm:"column:fan_no;type:varchar(255);not null" json:"fan_no"`				// 风机编号
	FanName 		string 	`gorm:"column:fan_name;type:varchar(255);not null" json:"fan_name"`			// 风机名
	StartTime 		string 	`gorm:"column:start_time;type:varchar(255);not null" json:"start_time"`		// 开始时间
	EndTime 		string 	`gorm:"column:end_time;type:varchar(255);not null" json:"end_time"`			// 结束时间
	Reason 			int8 	`gorm:"column:reason;type:int;not null" json:"reason"`						// 停机原因
}

// 表名
func (StopPlan) TableName() string {
	return "stop_plan"
}

// 用户信息表
type User struct {
	Id 				uint64 	`gorm:"column:id;primaryKey;autoIncrement;not null" json:"id"`				// 用户id
	Account 		string 	`gorm:"column:account;type:varchar(255);not null" json:"account"`			// 用户账号
	Name 			string	`gorm:"column:name;type:varchar(255);not null" json:"name"`					// 用户名
	Password 		string 	`gorm:"column:password;type:varchar(255);not null" json:"password"`			// 用户密码
	WindFarmId		uint64 	`gorm:"column:wind_farm_id;type:int;not null" json:"wind_farm_id"`			// 风场id
	Role 			int8 	`gorm:"column:role;type:int;not null" json:"role"`							// 用户角色
	UserPic			string 	`gorm:"column:user_pic;type:varchar(255);not null" json:"user_pic"`			// 用户头像
	LoggedTime 		string 	`gorm:"column:logged_time;type:varchar(255);not null" json:"logged_time"`	// 登出时间	
}
// 表名
func (User) TableName() string {
	return "user_info"
}

// 气象预报表
type WeatherForecast struct {
	Id 				uint64 	`gorm:"column:id;primaryKey;autoIncrement;not null" json:"id"`				// id
	WindFarmId 		uint64 	`gorm:"column:wind_farm_id;type:int;not null" json:"wind_farm_id"`			// 风场id
	Time 			string 	`gorm:"column:time;type:varchar(255);not null" json:"time"`					// 时间
	WindSpeed 		float32 `gorm:"column:wind_speed;type:float;not null" json:"wind_speed"`			// 风速
	Height 			int8 	`gorm:"column:height;type:int;not null" json:"height"`						// 高度
	WindDirection 	float32 `gorm:"column:wind_direction;type:float;not null" json:"wind_direction"`	// 风向
	Humidity 		float32 `gorm:"column:humidity;type:float;not null" json:"humidity"`				// 湿度
	Temperature 	float32 `gorm:"column:temperature;type:float;not null" json:"temperature"`			// 温度
	Atmosphere 		float32 `gorm:"column:atmosphere;type:float;not null" json:"atmosphere"`			// 大气压
	AirDensity 		float32 `gorm:"column:air_density;type:float;not null" json:"air_density"`			// 空气密度
}

// 表名
func (WeatherForecast) TableName() string {
	return "weather_forecast"
}

// 风场信息表
type WindFarmInfo struct {
	Id 				uint64 	`gorm:"column:id;primaryKey;autoIncrement;not null" json:"id"`				// 风场id
	Name 			string 	`gorm:"column:name;type:varchar(255);not null" json:"name"`					// 风场名
	FarmNo 			string 	`gorm:"column:farm_no;type:varchar(255);not null" json:"farm_no"`			// 风场编号
	CoordX 			float32 `gorm:"column:coord_x;type:float;not null" json:"coord_x"`					// 风场坐标x
	CoordY 			float32 `gorm:"column:coord_y;type:float;not null" json:"coord_y"`					// 风场坐标y
	ShortRate 		float32 `gorm:"column:short_rate;type:float;not null" json:"short_rate"`			// 短期精度
	UltraRate 		float32 `gorm:"column:ultra_rate;type:float;not null" json:"ultra_rate"`			// 超短期精度
	UploadRate 		float32 `gorm:"column:upload_rate;type:float;not null" json:"upload_rate"`			// 上传精度
	Caretaker		string 	`gorm:"column:caretaker;type:varchar(255);not null" json:"caretaker"`		// 负责人
	Telephone		string 	`gorm:"column:telephone;type:varchar(255);not null" json:"telephone"`		// 联系电话
	Address			string 	`gorm:"column:address;type:varchar(255);not null" json:"address"`			// 地址
}

// 表名
func (WindFarmInfo) TableName() string {
	return "wind_farm_info"
}