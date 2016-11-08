package ${packageName};

import android.os.Bundle;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.RelativeLayout;
import ${packageName}.bean.${beanName};
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
public class ${activityClass} extends AppCompatActivity implements SwipeRefreshLayout.OnRefreshListener, LoadMoreWrapper.OnLoadMoreListener, View.OnClickListener {

    private static  int PAGENUM = 1;

    private SwipeRefreshLayout mRefreshLayout;
    private RecyclerView mRecyclerView;
    private LoadMoreWrapper adapter;
    private List<${beanName}> mDatas =new ArrayList<>();

    // End Of Content View Elements

    private void bindViews() {


        mRefreshLayout = (SwipeRefreshLayout) findViewById(R.id.mRefreshLayout);
        mRecyclerView = (RecyclerView) findViewById(R.id.mRecyclerView);

		//R.layout.item_ 需要具体创建和实现  todo
        adapter = new LoadMoreWrapper(new CommonAdapter<${beanName}>(${activityClass}.this, R.layout.item_, mDatas) {

            @Override
            protected void convert(ViewHolder holder, ${beanName}  bean, int position) {
				//此处实现bean 和每个itemview 的数据绑定 todo

            }


        });

        mRefreshLayout.setOnRefreshListener(this);
        mRecyclerView.setItemAnimator(new DefaultItemAnimator());
        adapter.setLoadMoreView(R.layout.default_loading);
        adapter.setOnLoadMoreListener(this);
        mRecyclerView.setLayoutManager(new LinearLayoutManager(${activityClass}.this));
        mRecyclerView.setAdapter(adapter);

    }


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${activityLayoutName});
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

	private void loadData(int pageNum){

    }
    //方便设置点击事件 todo
    @Override
    public void onClick(View v) {
        switch (v.getId()){
            case R.id:

                break;
            case R.id:

                break;
            case R.id:

                break;
            case R.id:

                break;

        }

    }
}
