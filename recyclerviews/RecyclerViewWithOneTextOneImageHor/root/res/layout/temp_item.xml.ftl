<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="80dp"
    >

    <TextView
        android:id="@+id/textView"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
       android:layout_toRightOf="@id/imageView"
        />
    <ImageView
        android:id="@+id/imageView"
        android:layout_width="60dp"
        android:layout_height="60dp"

        android:src="@mipmap/ic_launcher"/>
</RelativeLayout>