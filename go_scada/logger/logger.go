package logger

import (
	"fmt"                     // 格式化
	"go.uber.org/zap/zapcore" // zap核心
)

// 日志接口
type Logger interface {
	// Debug uses fmt.Sprint to construct and log a message.
	Debugf(format string, args ...interface{})
	// Info uses fmt.Sprint to construct and log a message.
	Infof(format string, args ...interface{})
	// Warn uses fmt.Sprint to construct and log a message.
	Warnf(format string, args ...interface{})
	// Error uses fmt.Sprint to construct and log a message.
	Errorf(format string, args ...interface{})
	// Fatal uses fmt.Sprint to construct and log a message, then calls os.Exit.
	Fatalf(format string, args ...interface{})
	// Panic uses fmt.Sprint to construct and log a message, then panics.
	Panicf(format string, args ...interface{})
}

var log Logger

type Fields map[string]interface{}

// 日志配置信息
type LogConfig struct {
	EnableConsole     bool   // 是否启用控制台
	ConsoleJSONFormat bool   // 控制台是否输出json格式
	ConsoleLevel      string // 控制台日志级别
	EnableFile        bool   // 是否启用文件
	FileJSONFormat    bool   // 文件是否输出json格式
	FileLevel         string // 文件日志级别
	FileLocation      string // 文件日志位置
	MaxAge            int    // 日志文件最大保存时间（天）
	MaxSize           int    // 日志文件最大大小（MB）
	Compress          bool   // 是否压缩日志文件
	LocalTime         bool   // 是否使用本地时间
	UserDefine        bool   // 是否使用用户自定义
}

// 初始化日志
func newLogger(config LogConfig, args ...interface{}) (Logger, error) {
	var (
		err    error
		logger Logger
	)

	if args == nil {
		args = append(args, nil)
	}

	for _, arg := range args {
		switch arg := arg.(type) {
		case zapcore.Encoder: // 编码器
			logger, err = newZapLogger(config, arg)
		default:
			logger, err = newZapLogger(config)
		}
	}
	if err != nil {
		return nil, err
	}
	return logger, nil
}

// 初始化日志
func InitGlobalLogger(config LogConfig, args ...interface{}) error {
	var err error
	log, err = newLogger(config, args...)
	if err != nil {
		return err
	}
	fmt.Println("Init logger success")
	return nil
}

// 输出Debug
func Debugf(fmt string, args ...interface{}) {
	log.Debugf(fmt, args...)
}

// 输出信息
func Infof(fmt string, args ...interface{}) {
	log.Infof(fmt, args...)
}

// 输出警告
func Warnf(fmt string, args ...interface{}) {
	log.Warnf(fmt, args...)
}

// 输出错误
func Errorf(fmt string, args ...interface{}) {
	log.Errorf(fmt, args...)
}

// 输出致命错误
func Fatalf(fmt string, args ...interface{}) {
	log.Fatalf(fmt, args...)
}

// 输出panic
func Panicf(fmt string, args ...interface{}) {
	log.Panicf(fmt, args...)
}
