package  ${packageName};

import android.os.Bundle;
import android.support.design.widget.TabLayout;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;
import ${packageName}.fragment.${fragmentClass};
import ${packageName}.MainFragmentPagerAdapter;


public class ${activityClass} extends AppCompatActivity
{


    private TabLayout mTabLayout;
    private ViewPager mViewPager;
    private int mTabCount = ${tabCount};
    private MainFragmentPagerAdapter fragmentPagerAdapter;

    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${activityLayoutName});
        mTabLayout = (TabLayout) findViewById(R.id.id_tablayout);
        mViewPager = (ViewPager) findViewById(R.id.id_viewpager);
        fragmentPagerAdapter = new MainFragmentPagerAdapter(getSupportFragmentManager(), mTabCount);
        mViewPager.setAdapter(fragmentPagerAdapter);
        mTabLayout.setupWithViewPager(mViewPager);
    }
}
