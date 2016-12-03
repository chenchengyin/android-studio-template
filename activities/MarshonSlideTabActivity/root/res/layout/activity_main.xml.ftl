<?xml version="1.0" encoding="utf-8"?>
<LinearLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    tools:context="com.zhy.tabwithvp.MainActivity">

    <android.support.design.widget.TabLayout
        android:id="@+id/id_tablayout"
        android:layout_width="match_parent"
        android:layout_height="wrap_content">
    </android.support.design.widget.TabLayout>

    <android.support.v4.view.ViewPager
        android:id="@+id/id_viewpager"
        android:layout_width="match_parent"
        android:layout_height="0dp"
        android:layout_weight="1"
    />
</LinearLayout>
