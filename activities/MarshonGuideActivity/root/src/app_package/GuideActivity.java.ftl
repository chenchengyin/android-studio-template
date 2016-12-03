package ${packageName};

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
import android.widget.Button;
import android.widget.ImageView;
import ${packageName}.GuidePagerAdapter;


/**
 * 作者： your name on 2016/9/8 09:43
 * 邮箱：
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


        guideadapter=new GuidePagerAdapter(imgs,this);
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

    private void gotoMainActivity() {
        if(handler!=null){
            handler.removeCallbacks(delayGoMain);
            handler=null;
        }

        Intent intent = new Intent(${activityClass}.this, MainActivity.class);
        intent.putExtra("toupdate", true);
        startActivity(intent);
        finish();
    }

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


}


