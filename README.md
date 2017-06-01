
## 前言 ##
从开发web到android，代码也敲了不少。可能很多程度程序员在成长过程中也有过和我一样，项目做着做着很多重复的工作，重复的感觉反而降低我们对代码(老婆)的兴趣，在水群里常常看到有人问到，比如能不能创建工程的时候就把项目架构搭建好，一些常用的代码或者依赖库不用一个一个引进来， 因此，这几个月来楼主一直在搜寻资料，能不能让写过的代码不再重写，能不能一劳永逸，找过code template 玩了好几下，感觉不解渴。那东西一般只用与少量代码块的生成。不过到最后，楼主发现了创建Activity的时候，它有一些小秘密。。。

 ![这里写图片描述](http://img.blog.csdn.net/20161108173452713)
 这些是Android Studio默认提供给开发者创建的模板，本人用的很少，很多模板不适合国内app市场风格，简单点说，那些都是外佬用的东西。所以楼主继续去网上查找资料，同时偷窥AS目录结构，大概理解里面目录和文件的意思。Android Studio是用Java开发，作为Java开发者，有必要看看的。
 神秘的Activity模板终于被我找到了， 小玩意藏还挺深。
 ***[android-studio\plugins\android\lib\templates](www.baidu.com)***
 在这个目录下，有个activities目录，里面就是activity模板们所在目录。在深入了解和不断尝试，凝聚出楼主自定义的模板。在这分享和提供给大家使用。
 
从github上下载后模板后，将目录里的文件夹拷贝到
Android Studio根目录\plugins\android\lib\templates\ 目录下。重启Android Studio，**注意：**如果已有下载之前版本,请删除后再拷贝！请删除后再拷贝！请删除后再拷贝！创建：new class方法，new ->Activity（Marshon）->Activity 快速列表
![这里写图片描述](http://img.blog.csdn.net/20161108180245093)


一键实现效果如虾：

![这里写图片描述](http://img.blog.csdn.net/20161108180813740)

剩下就不一一展示了， 喜欢的朋友轻轻右上角给个star，您的鼓励会给我持续更新的动力。

更新
-

1.2 更新 **新增MVP模板（2017/06/01 21:58）**   

1.1 更新 **新增快速Adapter（2016/12/04 02:26）** 

依赖库：[https://github.com/hongyangAndroid/baseAdapter](https://github.com/hongyangAndroid/baseAdapter)（看过源码觉得不错，推荐一下）

- 一键实现Adapter之继承自baseAdapter中的CommonAdapter
- 一键实现Adapter之继承自baseAdapter中的ViewHolder
- 一键实现Adapter之继承自RecyclerView.Adapter


1.0 版本  **快速Activity (2016/11/11 22:49）** 

- 一键实现启动页
- 一键实现引导页
- 一键实现RecyclerView快速列表
- 一键实现Tablayout+ViewPager



## 总结 ##
有兴趣的童靴可以一起加入到模板工程来，欢迎加入QQ群：*243573999*。
Thks！
