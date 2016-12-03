package ${packageName};

import android.app.Activity;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;


/**
 * Created by  on 2016/12/3.
 * emal:
 * desc:
 */
public class ${adapterClass} extends RecyclerView.Adapter<${viewHolder}> {

    private List<${beanClass}> mDatas;
    private Activity mActivity;

    public ${adapterClass}(Activity mActivity, List<${beanClass}> datas) {
        this.mActivity = mActivity;
        mDatas = datas;
    }

    public void refreshDatas(List<${beanClass}> datas) {
        mDatas .clear();
        mDatas.addAll(datas);
        notifyDataSetChanged();
    }

    public void addDatas(List<${beanClass}> datas) {
        mDatas.addAll(datas);
        notifyDataSetChanged();
    }

    @Override
    public int getItemCount() {
        return mDatas==null?0:mDatas.size();
    }

    @Override
    public int getItemViewType(int position) {
        return super.getItemViewType(position);
    }

    @Override
    public ${viewHolder} onCreateViewHolder(ViewGroup parent, int viewType) {
	// TODO:  set item layout
        View itemView = LayoutInflater.from(mActivity).inflate(R.layout.item_, null);
        ${viewHolder} holder=new ${viewHolder}(mActivity,itemView);
        return holder;
    }

    @Override
    public void onBindViewHolder(${viewHolder} holder, int position) {
        ${beanClass} bean = mDatas.get(position);
	holder.convert(bean);

    }
}
