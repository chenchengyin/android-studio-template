package ${packageName};

import android.app.Activity;

import com.zhy.adapter.recyclerview.CommonAdapter;
import com.zhy.adapter.recyclerview.base.ViewHolder;

import java.util.ArrayList;
import java.util.List;

/**
 * Created:  on 2016/12/3.
 * email:
 * desc:
 */

public class ${adapterClass} extends CommonAdapter<${beanClass}> {

    private Activity mActivity;

    public ${adapterClass}(Activity context){
        // the item layout you should set 
        super(context, R.layout.item_,new ArrayList<${beanClass}>());
	this.mActivity=context;
    }

    public void refreshDatas(List<${beanClass}> datas){
        mDatas .clear();
        mDatas.addAll(datas);
        notifyDataSetChanged();
    }
    public void addDatas(List<${beanClass}> datas){
        mDatas.addAll(datas);
        notifyDataSetChanged();
    }

    @Override
    protected void convert(ViewHolder holder, ${beanClass} bean, int position) {
	//todo set data


    }
}