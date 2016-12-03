package ${packageName};

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;

import ${packageName}.fragment.${fragmentClass};

/**
 * author£º on 2016/9/8 09:43
 * email£º
 * desc£ºslidingtab 
 */

public class MainFragmentPagerAdapter  extends FragmentPagerAdapter {


    private int mTabCount;

    public MainFragmentPagerAdapter(FragmentManager fragmentManager, int mTabCount) {
        super(fragmentManager);
        this.mTabCount=mTabCount;
    }

    @Override
    public Fragment getItem(int position) {
        return new TabListFragment();
    }

    @Override
    public int getCount() {
        return mTabCount;
    }

    @Override
    public CharSequence getPageTitle(int position) {
        return "Tab:" + position;
    }
}
