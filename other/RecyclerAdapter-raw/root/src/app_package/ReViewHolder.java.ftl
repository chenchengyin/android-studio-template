package arg.marshon.templates;

import android.app.Activity;
import android.view.View;
import android.support.v7.widget.RecyclerView;

/**
 * Created by  on 2016/12/4.
 * emal: 
 * desc:
 */

public class ${viewHolder} extends RecyclerView.ViewHolder{

    private Activity mActivity;

    public ${viewHolder}(Activity mActivity, View itemView) {
        super(itemView);
	this.mActivity = mActivity;
    }


    public void convert(${beanClass} bean){
	//todo set data
    }
}
