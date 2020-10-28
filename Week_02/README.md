# 学习笔记

## 学习点
- [GC 日志解读与分析]
- [NIO相关学习]
- [Netty学习]
##1. GC 日志解读与分析

GC 日志解读与分析

java -XX:+PrintGCDetails GCLogAnalysis

java -Xloggc:gc.demo.log -XX:+PrintGCDetails -XX:+PrintGCDateStamps

GCLogAnalysis

1）模拟一下 OOM，java -Xmx128m -XX:+PrintGCDetails GCLogAnalysis

2）分别使用 512m,1g,2g,4g观察GC信息的不同