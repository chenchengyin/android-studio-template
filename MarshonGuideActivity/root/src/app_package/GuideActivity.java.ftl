package ${packageName}.guide;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.ImageButton;
import android.widget.ImageView;


/**
 * 作者：Marshon.Chen on 2016/9/8 09:43
 * 邮箱：itmarshon@163.com
 * 功能描述：引导页模板
 */
public class ${activityClass} extends AppCompatActivity {

	private int[] imgs= {android.R.color.holo_red_light,
		android.R.color.holo_blue_light,
		android.R.color.holo_green_light,
		android.R.color.holo_orange_light,
	};
    private Button btn_enter;
    private ViewPager viewpager;
    private GuidePagerAdapter guideadapter;
    private Handler handler;

    private void initView() {
        btn_enter = (Button) findViewById(R.id.btn_enter);
        btn_enter.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                gotoMainActivity();
            }
        });
        viewpager= (ViewPager) findViewById(R.id.viewpager);


        //初始化所有View 状态
        guideadapter=new GuidePagerAdapter();
        viewpager.setAdapter(guideadapter);
        viewpager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() {
            @Override
            public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
                if (handler != null) {
                    handler.removeCallbacks(delayGoMain);
                }
            }

            @Override
            public void onPageSelected(int position) {
                if (position == (imgs.length - 1)) {
                    showGotoMainBtn(true);
                } else {
                    showGotoMainBtn(false);
                }
                if (handler != null) {
                    handler.postDelayed(delayGoMain,3000);
                }

            }

            @Override
            public void onPageScrollStateChanged(int state) {
            }
        });

        if (handler != null) {
            handler.postDelayed(delayGoMain,3000);
        }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${layoutName});
        handler=new Handler();
        initView();
    }

    //马上进入程序
    private void gotoMainActivity() {
        if(handler!=null){
            handler.removeCallbacks(delayGoMain);
            handler=null;
        }
        //跳转
        Intent intent = new Intent(${activityClass}.this, MainActivity.class);
        intent.putExtra("toupdate", true);
        startActivity(intent);
        finish();
    }

    //轮播完,去到主页
    private void showGotoMainBtn(boolean show){
        if (show) {
            btn_enter.setVisibility(View.VISIBLE);
            btn_enter.setEnabled(false);
            AlphaAnimation animation = new AlphaAnimation(0f,1.0f);
            animation.setDuration(500);
            animation.setAnimationListener(
                    new Animation.AnimationListener() {
                           @Override
                           public void onAnimationStart(Animation animation) {

                           }

                           @Override
                           public void onAnimationEnd(Animation animation) {
                               btn_enter.setEnabled(true);

                           }

                           @Override
                           public void onAnimationRepeat(Animation animation) {

                           }
                                           });
            btn_enter.startAnimation(animation);

        } else {
            btn_enter.setVisibility(View.GONE);
        }

    }

    //延时任务
    private Runnable delayGoMain =new Runnable() {
        @Override
        public void run() {
            if (viewpager.getCurrentItem() == (imgs.length - 1)) {
                gotoMainActivity();

            } else {
                viewpager.setCurrentItem(viewpager.getCurrentItem() + 1);
            }
        }
    };

    //引导适配器
    class GuidePagerAdapter extends PagerAdapter {

        @Override
        public int getCount() {
            return imgs.length;
        }

        @Override
        public boolean isViewFromObject(View view, Object object) {
            return view==object;
        }

        @Override
        public Object instantiateItem(ViewGroup container, int position) {
            ImageView iv=new ImageView(${activityClass}.this);
            ViewGroup.LayoutParams params=new ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT);
            iv.setBackgroundResource(imgs[position]);
            container.addView(iv,params);
            return iv;
        }

        @Override
        public void destroyItem(ViewGroup container, int position, Object object) {
            if(object instanceof ImageView){
                container.removeView((View) object);
            }
        }
    }

}


