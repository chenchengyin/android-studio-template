package ${packageName};

import android.app.Activity;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;



public class GuidePagerAdapter extends PagerAdapter {


    private  Activity mActivity;
    private int[] imgs;

    public GuidePagerAdapter(int[] imgs, Activity mActivity){
        this.mActivity=mActivity;
        this.imgs=imgs;

    }

    @Override
    public int getCount() {
        return imgs.length;
    }

    @Override
    public boolean isViewFromObject(View view, Object object) {
        return view == object;
    }

    @Override
    public Object instantiateItem(ViewGroup container, int position) {
        ImageView iv = new ImageView(mActivity);
        ViewGroup.LayoutParams params = new ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT);
        iv.setBackgroundResource(imgs[position]);
        container.addView(iv, params);

        return iv;
    }

    @Override
    public void destroyItem(ViewGroup container, int position, Object object) {
        if (object instanceof ImageView) {
            container.removeView((View) object);
        }
    }
}
