package config

import (
	"fmt"				// 格式化
	"os"				// 操作系统
	"path"				// 路径
	"path/filepath"		// 文件路径
	"runtime"			// 运行时

	"gopkg.in/yaml.v3"	// yaml解析
)

var configFile []byte	// 配置文件内容

// 配置文件数据结构
type Config struct {
	// 日志配置
	Log struct {
		EnableConsole     bool   `yaml:"enableConsole"`			// 是否启用控制台
		ConsoleJSONFormat bool   `yaml:"consoleJSONFormat"`		// 控制台是否输出json格式
		ConsoleLevel      string `yaml:"consoleLevel"`			// 控制台日志级别
		EnableFile        bool   `yaml:"enableFile"`			// 是否启用文件
		FileJSONFormat    bool   `yaml:"fileJSONFormat"`		// 文件是否输出json格式
		FileLevel         string `yaml:"fileLevel"`				// 文件日志级别
		FileLocation      string `yaml:"fileLocation"`			// 文件日志位置
		MaxAge            int    `yaml:"maxAge"`				// 日志文件最大保存时间（天）
		MaxSize           int    `yaml:"maxSize"`				// 日志文件最大大小（MB）
		Compress          bool   `yaml:"compress"`				// 是否压缩日志文件
	}

	// 服务配置
	Webapi struct {
		Uri string `yaml:"uri"`				// 服务地址
	}

	// 数据库配置
	MySqlnd struct {
		Username string `yaml:"username"` 	// 用户名
		Password string `yaml:"password"` 	// 密码
		Host     string `yaml:"host"`		// 主机
		Port     string `yaml:"port"`		// 端口
		Database string `yaml:"database"`	// 数据库
	}

	// redis配置
	Redis struct {
		Host	 string `yaml:"host"`		// 主机
		Port	 int `yaml:"port"`		// 端口
		Password string `yaml:"password"`	// 密码
	}
}

// 初始化配置文件
func init() {
	var err error
	configFilePath := filepath.Join(getCurrentAbPathByCaller(), "config.yaml")
	configFile, err = os.ReadFile(configFilePath)
	if err != nil {
		fmt.Printf("Read config yaml file err %v", err)
	}
}

// 获取当前执行文件绝对路径（go run）
func getCurrentAbPathByCaller() string {
	var abPath string
	_, filename, _, ok := runtime.Caller(0)
	if ok {
		abPath = path.Dir(filename)
	}
	return abPath
}
// 初始化配置文件
func InitConfig() (config *Config, err error) {

	// 解析配置文件
	err = yaml.Unmarshal(configFile, &config)
	return config, err
}
