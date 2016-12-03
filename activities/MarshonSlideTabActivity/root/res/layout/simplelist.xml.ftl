<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    android:id="@+id/activity_list"
    android:layout_width="match_parent"
    android:layout_height="match_parent">

    <android.support.v4.widget.SwipeRefreshLayout
        android:id="@+id/mRefreshLayout"
        android:layout_width="match_parent"
        android:layout_height="match_parent">
        <android.support.v7.widget.RecyclerView
            android:id="@+id/mRecyclerView"
            android:layout_width="match_parent"
            android:layout_height="match_parent">

        </android.support.v7.widget.RecyclerView>


    </android.support.v4.widget.SwipeRefreshLayout>
	
	<TextView 
		android:id="@+id/tv"
		android:text="加载数据中。。。"
		android:gravity="center"
		android:layout_width="match_parent"
        android:layout_height="match_parent"/>

</RelativeLayout>
