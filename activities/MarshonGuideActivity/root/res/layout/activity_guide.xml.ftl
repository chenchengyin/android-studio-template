<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
              android:orientation="vertical"
              android:layout_width="match_parent"
              android:layout_height="match_parent">

    <android.support.v4.view.ViewPager
        android:id="@+id/viewpager"
        android:layout_width="match_parent"
        android:layout_height="match_parent">

    </android.support.v4.view.ViewPager>

    <Button
        android:id="@+id/btn_enter"
        android:layout_width="120dp"
        android:layout_height="40dp"
        android:scaleType="centerCrop"
        android:layout_centerHorizontal="true"
        android:layout_alignParentBottom="true"
        android:layout_marginBottom="20dp"
        android:background="@android:color/white"
        android:textColor="#000000"
        android:text="立即体验"
		android:visibility="gone"/>



</RelativeLayout>