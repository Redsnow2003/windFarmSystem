package logger

import (
	"go.uber.org/zap"
	"go.uber.org/zap/zapcore"
	"gopkg.in/natefinch/lumberjack.v2"
	"os"
)

// 日志接口
type zapLogger struct {
	sugaredLogger *zap.SugaredLogger
}

// 默认编码
func defaultEncoder(isJosn bool) zapcore.Encoder {
	encodeConfig := zap.NewProductionEncoderConfig()     // 生产环境编码器
	encodeConfig.EncodeTime = zapcore.ISO8601TimeEncoder // 时间格式
	encodeConfig.TimeKey = "time"                        // 时间键
	if isJosn {                                          // json格式
		return zapcore.NewJSONEncoder(encodeConfig)
	}
	return zapcore.NewConsoleEncoder(encodeConfig)
}

// 获取日志级别
func getZapLevel(level string) zapcore.Level {
	switch level {
	case "Debug":
		return zapcore.DebugLevel
	case "Info":
		return zapcore.InfoLevel
	case "Warn":
		return zapcore.WarnLevel
	case "Error":
		return zapcore.ErrorLevel
	case "Dpanic":
		return zapcore.DPanicLevel
	case "Panic":
		return zapcore.PanicLevel
	case "Fatal":
		return zapcore.FatalLevel
	default:
		return zap.ErrorLevel
	}
}

// 初始化zap日志
func newZapLogger(config LogConfig, args ...interface{}) (Logger, error) {
	var (
		cores []zapcore.Core
	)
	// 输出到控制台，main函数初始化EnableConsole的值
	if config.EnableConsole {
		// 获取日志级别
		level := getZapLevel(config.ConsoleLevel)
		// 写入Stdout(标准输出)
		writer := zapcore.Lock(os.Stdout)
		// 定制编码器
		core := zapcore.NewCore(defaultEncoder(config.ConsoleJSONFormat), writer, level)
		cores = append(cores, core)
	}
	// 输出到文件，main函数初始化EnableFile的值
	if config.EnableFile {
		// 获取日志级别
		level := getZapLevel(config.FileLevel)
		// 文件句柄
		writer := zapcore.AddSync(&lumberjack.Logger{
			Filename: config.FileLocation,
			MaxSize:  config.MaxSize,
			Compress: config.Compress,
			MaxAge:   config.MaxAge,
		})
		// 定制编码器
		core := zapcore.NewCore(defaultEncoder(config.FileJSONFormat), writer, level)
		cores = append(cores, core)
	}

	// 用户初始化值
	if config.UserDefine {
		level := getZapLevel(config.FileLevel)
		writer := zapcore.AddSync(&lumberjack.Logger{
			Filename:  config.FileLocation,
			MaxSize:   config.MaxSize,
			Compress:  config.Compress,
			MaxAge:    config.MaxAge,
			LocalTime: config.LocalTime,
		})
		for _, arg := range args {
			switch arg := arg.(type) {
			case zapcore.Encoder:
				core := zapcore.NewCore(arg, writer, level)
				cores = append(cores, core)
			default:
				core := zapcore.NewCore(defaultEncoder(config.FileJSONFormat), writer, level)
				cores = append(cores, core)
			}
		}
	}
	// 合并输出
	combinedCore := zapcore.NewTee(cores...)
	// 创建日志
	logger := zap.New(combinedCore,
		zap.AddCallerSkip(2),
		zap.AddCaller(),
	).Sugar()

	return &zapLogger{
		sugaredLogger: logger,
	}, nil
}

// Debug uses fmt.Sprint to construct and log a message.
func (l *zapLogger) Debugf(format string, args ...interface{}) {
	l.sugaredLogger.Debugf(format, args...)
}
// Info uses fmt.Sprint to construct and log a message.
func (l *zapLogger) Infof(format string, args ...interface{}) {
	l.sugaredLogger.Infof(format, args...)
}
// Warn uses fmt.Sprint to construct and log a message.
func (l *zapLogger) Warnf(format string, args ...interface{}) {
	l.sugaredLogger.Warnf(format, args...)
}
// Error uses fmt.Sprint to construct and log a message.
func (l *zapLogger) Errorf(format string, args ...interface{}) {
	l.sugaredLogger.Errorf(format, args...)
}
// Fatal uses fmt.Sprint to construct and log a message, then calls os.Exit.
func (l *zapLogger) Fatalf(format string, args ...interface{}) {
	l.sugaredLogger.Fatalf(format, args...)
}
// Panic uses fmt.Sprint to construct and log a message, then panics.
func (l *zapLogger) Panicf(format string, args ...interface{}) {
	l.sugaredLogger.Fatalf(format, args...)
}
// WithFields adds a variadic number of fields to the logging context.
func (l *zapLogger) WithFields(fields Fields) Logger {
	var f = make([]interface{}, 0)
	for k, v := range fields {
		f = append(f, k)
		f = append(f, v)
	}
	newLogger := l.sugaredLogger.With(f...)
	return &zapLogger{newLogger}
}
