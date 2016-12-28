测试地址：http://localhost:8080/niceday/user/save?name=%E7%8E%8B23


环境搭建向导
http://blog.csdn.net/zhshulin/article/details/37956105



Mysql 数据库名:happydyr  
开启服务 net start happydyr
关闭服务 net stop happydyr

1、拦截器是基于反射机制、过滤器是通过函数回调来实现的
烂机器的优势
2、拦截器不需要依赖 severlet容器、过滤器需要依赖
3、拦截器可以访问 action 的上下文
4、在Action的生命周期拦截器可以调用多次、但是过滤器只能在servelet 容器初始化的时候 调用一次
//过滤器的优势
5、拦截器只对Action请求起作用，而过滤器可以几乎对所有请求起作用


为什么要使用Struts2
1、MVC 框架
2、模块化
3、声明式异常
4、支持OGNL
5、强大的拦截器
6、易于测试
7、易于扩展
8、线程安全