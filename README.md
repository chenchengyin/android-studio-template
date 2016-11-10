
## 前言 ##
从开发web到android，代码也敲了不少。相信很多程度程序员在成长过程中也有过和我一样，项目做着做着很多重复的工作，做多了感觉代码趣味性没那么高了，在水群里常常看到有人问到，比如能不能创建工程的时候就把项目架构搭建好，一些常用的代码或者依赖库不用一个一个引进来， 因此，这几个月来楼主一直在搜寻资料，能不能让写过的代码不再重写，能不能一劳永逸，找过code template 玩了好几下，感觉不解渴。它一般只用与少量代码块的生成。最后，楼主发现了创建Activity的时候，它有一些小秘密。。。

 ![这里写图片描述](http://img.blog.csdn.net/20161108173452713)
 这些就是Android Studio默认提供给开发者创建的模板，本人用的很少，很多模板不适合国内app市场风格，简单点说，那些都是外佬用的东西。所以楼主继续去网上查找资料，同时偷窥AS目录结构，大概理解里面目录和文件的意思。Android Studio是用Java开发，作为Java开发者，有必要看看的。
 神秘的Activity模板终于被我找到了， 小玩意藏还挺深。
 ***[android-studio\plugins\android\lib\templates](www.baidu.com)***
 在这个目录下，有个activities目录，里面就是activity模板们所在目录。在深入了解和不断尝试，凝聚出楼主自定义的模板。在这分享和提供给大家使用。
 

##  一键实现启动页
## 一键实现引导页
##  一键实现RecyclerView快速列表
##  一键实现Tablayout+ViewPager
从github上下载后模板后，将目录里的MarshonActivity 文件夹拷贝到
Android Studio根目录\plugins\android\lib\templates\activities 目录下。重启Android Studio，如果已有功能，则按一般的创建class方法，new ->Activity->Activity 快速列表
![这里写图片描述](http://img.blog.csdn.net/20161108180245093)

```
package arg.marson.myapplication;

import android.os.Bundle;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.RelativeLayout;

import arg.marson.myapplication.bean.Bean;

import com.zhy.adapter.recyclerview.CommonAdapter;
import com.zhy.adapter.recyclerview.base.ViewHolder;
import com.zhy.adapter.recyclerview.wrapper.LoadMoreWrapper;

import java.util.ArrayList;
import java.util.List;

/**
 * 作者：Marshon.Chen on 2016/9/8 09:43
 * 邮箱：itmarshon@163.com
 * 功能描述：list列表模板
 */
public class MarsListActivity extends AppCompatActivity implements SwipeRefreshLayout.OnRefreshListener, LoadMoreWrapper.OnLoadMoreListener, View.OnClickListener {

    private static  int PAGENUM = 1;
    private SwipeRefreshLayout mRefreshLayout;
    private RecyclerView mRecyclerView;
    private LoadMoreWrapper adapter;
    private List<Bean> mDatas = new ArrayList<>();

    // End Of Content View Elements

    private void bindViews() {


        mRefreshLayout = (SwipeRefreshLayout) findViewById(R.id.mRefreshLayout);
        mRecyclerView = (RecyclerView) findViewById(R.id.mRecyclerView);

        //R.layout.item_ 需要具体创建和实现
        adapter = new LoadMoreWrapper(new CommonAdapter<Bean>(MarsListActivity.this, R.layout.item_, mDatas) {

            @Override
            protected void convert(ViewHolder holder, Bean bean, int position) {
            }

        });
        mRefreshLayout.setOnRefreshListener(this);
        mRecyclerView.setItemAnimator(new DefaultItemAnimator());
        adapter.setLoadMoreView(R.layout.default_loading);
        adapter.setOnLoadMoreListener(this);
        mRecyclerView.setLayoutManager(new LinearLayoutManager(MarsListActivity.this));
        mRecyclerView.setAdapter(adapter);
    }


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_mars_list);
        bindViews();
    }

    //刷新数据
    @Override
    public void onRefresh() {
        mRefreshLayout.setRefreshing(false);
        loadData(PAGENUM);
    }

    //加载更多数据
    @Override
    public void onLoadMoreRequested() {
        loadData(++PAGENUM);
    }

    private void loadData(int pageNum) {

    }

    //方便设置点击事件
    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id:

                break;
          

        }

    }
}
```
一键实现下面效果：

![这里写图片描述](http://img.blog.csdn.net/20161108180813740)

剩下就不展示了， 喜欢的朋友轻轻右上角给个star，您的鼓励会给我持续更新的动力。
## 总结 ##
Thks！