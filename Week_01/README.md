# 学习笔记


# 编程语言
java是一种面向对象、静态类型、编译运行，有VM/GC、跨平台的高级语言。

C/C++源代码跨平台。
java二进制跨平台。


# 生成字节码


```
    新建文件  /demo/jvm0104/HelloByteCode.java
    
    public class HelloByteCode {
        public static void main(String[] args) {
            HelloByteCode obj = new HelloByteCode();
        }
    }
    
```
>> ## 编译文件
javac  .\demo\jvm0104\HelloByteCode.java

>> ## 查看字节码
 javap -c demo.jvm0104.HelloByteCode

```

    Compiled from "HelloByteCode.java"
    public class demo.jvm0104.HelloByteCode {
      public demo.jvm0104.HelloByteCode();
        Code:
           0: aload_0
           1: invokespecial #1                  // Method java/lang/Object."<init>":()V
           4: return

      public static void main(java.lang.String[]);
        Code:
           0: new           #2                  // class demo/jvm0104/HelloByteCode
           3: dup
           4: invokespecial #3                  // Method "<init>":()V
           7: astore_1
           8: return
    }
```


>> ## 复杂点的例子

```

    PS E:\liyuan-github\my-algorithm\java-jike-xunlianying\week01> javap -c -verbose demo.jvm0104.HelloByteCode
    Classfile /E:/liyuan-github/my-algorithm/java-jike-xunlianying/week01/demo/jvm0104/HelloByteCode.class
      Last modified 2020年10月17日; size 301 bytes
      MD5 checksum 4d7cf03da9c9e51c5a39cb15e962e1ee
      Compiled from "HelloByteCode.java"
    public class demo.jvm0104.HelloByteCode
      minor version: 0
      major version: 55
      flags: (0x0021) ACC_PUBLIC, ACC_SUPER
      this_class: #2                          // demo/jvm0104/HelloByteCode
      super_class: #4                         // java/lang/Object
      interfaces: 0, fields: 0, methods: 2, attributes: 1
    Constant pool:
       #1 = Methodref          #4.#13         // java/lang/Object."<init>":()V
       #2 = Class              #14            // demo/jvm0104/HelloByteCode
       #3 = Methodref          #2.#13         // demo/jvm0104/HelloByteCode."<init>":()V
       #4 = Class              #15            // java/lang/Object
       #5 = Utf8               <init>
       #6 = Utf8               ()V
       #7 = Utf8               Code
       #8 = Utf8               LineNumberTable
       #9 = Utf8               main
      #10 = Utf8               ([Ljava/lang/String;)V
      #11 = Utf8               SourceFile
      #12 = Utf8               HelloByteCode.java
      #13 = NameAndType        #5:#6          // "<init>":()V
      #14 = Utf8               demo/jvm0104/HelloByteCode
      #15 = Utf8               java/lang/Object
    {
      public demo.jvm0104.HelloByteCode();
        descriptor: ()V
        flags: (0x0001) ACC_PUBLIC
        Code:
          stack=1, locals=1, args_size=1
             0: aload_0
             1: invokespecial #1                  // Method java/lang/Object."<init>":()V
             4: return
          LineNumberTable:
            line 3: 0

      public static void main(java.lang.String[]);
        descriptor: ([Ljava/lang/String;)V
        flags: (0x0009) ACC_PUBLIC, ACC_STATIC
        Code:
          stack=2, locals=2, args_size=1
             0: new           #2                  // class demo/jvm0104/HelloByteCode
             3: dup
             4: invokespecial #3                  // Method "<init>":()V
             7: astore_1
             8: return
          LineNumberTable:
            line 5: 0
            line 6: 8
    }
    SourceFile: "HelloByteCode.java"
    PS E:\liyuan-github\my-algorithm\java-jike-xunlianying\week01>
```

>> 通过-g编译可以看到本地变量表，例如
>> javac -g  .\demo\jvm0104\LocalVariableTest.java


>> 查看字节码
 javap -c -verbose demo.jvm0104.MovingAverage
 javap -c -verbose demo.jvm0104.LocalVariableTest


# 数值处理与本地变量表

## 查看字节码工具
>> jclasslib
>> 参考  https://mp.weixin.qq.com/s/ZHq1gI-KdU57isqoA0lYLw

