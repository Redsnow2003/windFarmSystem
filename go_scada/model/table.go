package model

// 用户表
type User struct {
	Id         uint64 `gorm:"column:id;primaryKey;autoIncrement;not null" json:"id"`      // 用户id
	UserName   string `gorm:"column:username;type:varchar(255);not null" json:"username"` // 用户名
	Password   string `gorm:"column:password;type:varchar(255);not null" json:"password"` // 用户密码
	Name       string `gorm:"column:name;type:varchar(255);not null" json:"name"`         // 用户姓名
	Role       int8   `gorm:"column:role;type:int;not null" json:"role"`                  // 用户角色
	Img        string `gorm:"column:img;type:varchar(255)" json:"img"`                    // 用户头像
	LoginTime  string `gorm:"column:login_time;type:datetime" json:"login_time"`          // 登录时间
	LogoutTime string `gorm:"column:logout_time;type:datetime" json:"logout_time"`        // 退出时间
}

// 表名
func (User) TableName() string {
	return "user"
}

// 风场表
type WindFarm struct {
	Id            uint64  `gorm:"column:id;primaryKey;autoIncrement;not null" json:"id"`           // 风场id
	Name          string  `gorm:"column:name;type:varchar(255);not null" json:"name"`              // 风场名称
	WindSpeed     float32 `gorm:"column:wind_speed;type:float;not null" json:"wind_speed"`         // 风速
	ActivePower   float32 `gorm:"column:active_power;type:float;not null" json:"active_power"`     // 有功功率
	ReactivePower float32 `gorm:"column:reactive_power;type:float;not null" json:"reactive_power"` // 无功功率
	TotalElectric float32 `gorm:"column:total_electric;type:float;not null" json:"total_electric"` // 总电量
	YearElectric  float32 `gorm:"column:year_electric;type:float;not null" json:"year_electric"`   // 年电量
	MonthElectric float32 `gorm:"column:month_electric;type:float;not null" json:"month_electric"` // 月电量
	DayElectric   float32 `gorm:"column:day_electric;type:float;not null" json:"day_electric"`     // 日电量
}

func (WindFarm) TableName() string {
	return "windfarm"
}

// 风机表
type Fan struct {
	Id          uint64  `gorm:"column:id;primaryKey;autoIncrement;not null" json:"id"`       // 风机id
	Name        string  `gorm:"column:name;type:varchar(255);not null" json:"name"`          // 风机名称
	Power       float32 `gorm:"column:power;type:float;not null" json:"power"`               // 风机功率
	Status      int8    `gorm:"column:status;type:int;not null" json:"status"`               // 风机状态
	Lng         float32 `gorm:"column:lng;type:float;not null" json:"lng"`                   // 风机经度
	Lat         float32 `gorm:"column:lat;type:float;not null" json:"lat"`                   // 风机纬度
	WindSpeed   float32 `gorm:"column:wind_speed;type:float;not null" json:"wind_speed"`     // 风速
	DayElectric float32 `gorm:"column:day_electric;type:float;not null" json:"day_electric"` // 日电量
	AlertLevel  int8    `gorm:"column:alert_level;type:int;not null" json:"alert_level"`     // 预警等级
}

func (Fan) TableName() string {
	return "fan"
}

// 风机桨叶表
type FanBlade struct {
	Id           uint64  `gorm:"column:id;primaryKey;autoIncrement;not null" json:"id"`       // 风机桨叶id
	FanId        uint64  `gorm:"column:fan_id;type:bigint;not null" json:"fan_id"`            // 风机id
	Blade1Status string  `gorm:"column:blade1_status;type:int;not null" json:"blade1_status"` // 桨叶1状态
	Blade1Angle  float32 `gorm:"column:blade1_angle;type:float;not null" json:"blade1_angle"` // 桨叶1角度
	Blade2Status string  `gorm:"column:blade2_status;type:int;not null" json:"blade2_status"` // 桨叶2状态
	Blade2Angle  float32 `gorm:"column:blade2_angle;type:float;not null" json:"blade2_angle"` // 桨叶2角度
	Blade3Status string  `gorm:"column:blade3_status;type:int;not null" json:"blade3_status"` // 桨叶3状态
	Blade3Angle  float32 `gorm:"column:blade3_angle;type:float;not null" json:"blade3_angle"` // 桨叶3角度
}

func (FanBlade) TableName() string {
	return "fan_blade"
}

// 风机电网表
type FanGrid struct {
	Id              uint64  `gorm:"column:id;primaryKey;autoIncrement;not null" json:"id"`               // 风机电网id
	FanId           uint64  `gorm:"column:fan_id;type:bigint;not null" json:"fan_id"`                    // 风机id
	PowerFactor     float32 `gorm:"column:power_factor;type:float;not null" json:"power_factor"`         // 功率因数
	EnergyFrequency float32 `gorm:"column:energy_frequency;type:float;not null" json:"energy_frequency"` // 电网频率
	ActivePower     float32 `gorm:"column:active_power;type:float;not null" json:"active_power"`         // 有功功率
	ReactivePower   float32 `gorm:"column:reactive_power;type:float;not null" json:"reactive_power"`     // 无功功率
	CrudeVoltage1   float32 `gorm:"column:crude_voltage1;type:float;not null" json:"crude_voltage1"`     // 电网粗电压1
	CrudeVoltage2   float32 `gorm:"column:crude_voltage2;type:float;not null" json:"crude_voltage2"`     // 电网粗电压2
	CrudeVoltage3   float32 `gorm:"column:crude_voltage3;type:float;not null" json:"crude_voltage3"`     // 电网粗电压3
	CrudeCurrent1   float32 `gorm:"column:crude_current1;type:float;not null" json:"crude_current1"`     // 电网粗电流1
	CrudeCurrent2   float32 `gorm:"column:crude_current2;type:float;not null" json:"crude_current2"`     // 电网粗电流2
	CrudeCurrent3   float32 `gorm:"column:crude_current3;type:float;not null" json:"crude_current3"`     // 电网粗电流3
}

func (FanGrid) TableName() string {
	return "fan_grid"
}

// 风机机械状态表
type FanMachine struct {
	Id           uint64  `gorm:"column:id;primaryKey;autoIncrement;not null" json:"id"`         // 风机机械状态id
	FanId        uint64  `gorm:"column:fan_id;type:bigint;not null" json:"fan_id"`              // 风机id
	WheelRpm     float32 `gorm:"column:wheel_rpm;type:float;not null" json:"wheel_rpm"`         // 风轮转速
	GeneratorRpm float32 `gorm:"column:generator_rpm;type:float;not null" json:"generator_rpm"` // 发电机转速
	BrakeStatus  string  `gorm:"column:brake_status;type:int;not null" json:"brake_status"`     // 刹车状态
	YawStatus    string  `gorm:"column:yaw_status;type:int;not null" json:"yaw_status"`         // 偏航状态
	VibrateX     float32 `gorm:"column:vibrate_x;type:float;not null" json:"vibrate_x"`         // 振动x
	VibrateY     float32 `gorm:"column:vibrate_y;type:float;not null" json:"vibrate_y"`         // 振动y
	VibrateLR    float32 `gorm:"column:vibrate_lr;type:float;not null" json:"vibrate_lr"`       // 振动左右
	VibrateFB    float32 `gorm:"column:vibrate_fb;type:float;not null" json:"vibrate_fb"`       // 振动前后
}

func (FanMachine) TableName() string {
	return "fan_machine"
}

// 风机温度表
type FanTemperature struct {
	Id             uint64 `gorm:"column:id;primaryKey;autoIncrement;not null" json:"id"`               // 风机温度id
	FanId          uint64 `gorm:"column:fan_id;type:bigint;not null" json:"fan_id"`                    // 风机id
	Transformer    uint32 `gorm:"column:transformer;type:int;not null" json:"transformer"`             // 变压器温度
	GearboxIn      uint32 `gorm:"column:gearbox_in;type:float;not null" json:"gearbox_in"`             // 齿轮箱内温度
	GearboxOil     uint32 `gorm:"column:gearbox_oil;type:float;not null" json:"gearbox_oil"`           // 齿轮箱油温
	GearboxInput   uint32 `gorm:"column:gearbox_input;type:float;not null" json:"gearbox_input"`       // 齿轮箱输入轴温度
	GearboxOutput  uint32 `gorm:"column:gearbox_output;type:float;not null" json:"gearbox_output"`     // 齿轮箱输出轴温度
	EngineAricool  uint32 `gorm:"column:engine_aricool;type:float;not null" json:"engine_aricool"`     // 发动机空气冷却器温度
	EngineBearingA uint32 `gorm:"column:engine_bearing_a;type:float;not null" json:"engine_bearing_a"` // 发动机轴承A温度
	EngineBearingB uint32 `gorm:"column:engine_bearing_b;type:float;not null" json:"engine_bearing_b"` // 发动机轴承B温度
	StatorU1       uint32 `gorm:"column:stator_u1;type:float;not null" json:"stator_u1"`               // 定子U1温度
	StatorU2       uint32 `gorm:"column:stator_u2;type:float;not null" json:"stator_u2"`               // 定子U2温度
	StatorV1       uint32 `gorm:"column:stator_v1;type:float;not null" json:"stator_v1"`               // 定子V1温度
	StatorV2       uint32 `gorm:"column:stator_v2;type:float;not null" json:"stator_v2"`               // 定子V2温度
	StatorW1       uint32 `gorm:"column:stator_w1;type:float;not null" json:"stator_w1"`               // 定子W1温度
	StatorW2       uint32 `gorm:"column:stator_w2;type:float;not null" json:"stator_w2"`               // 定子W2温度
	EngineroomAir  uint32 `gorm:"column:engineroom_air;type:float;not null" json:"engineroom_air"`     // 机舱空气温度
	EngineroomBox  uint32 `gorm:"column:engineroom_box;type:float;not null" json:"engineroom_box"`     // 机舱箱温度
	EngineroomOut  uint32 `gorm:"column:engineroom_out;type:float;not null" json:"engineroom_out"`     // 机舱外温度
	TowerTube      uint32 `gorm:"column:tower_tube;type:float;not null" json:"tower_tube"`             // 塔筒温度
	BottomBox      uint32 `gorm:"column:bottom_box;type:float;not null" json:"bottom_box"`             // 底部箱温度
}

func (FanTemperature) TableName() string {
	return "fan_temperature"
}
