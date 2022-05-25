<?xml version="1.0" encoding="utf-8"?>
<androidx.constraintlayout.widget.ConstraintLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"

    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:layout_marginLeft="10dp"
    android:layout_marginRight="10dp">


    <ImageView
        android:id="@+id/imageView1"
        android:layout_width="0dp"
        android:layout_height="90dp"
        app:layout_constraintEnd_toStartOf="@+id/imageView2"
        app:layout_constraintHorizontal_bias="0.5"
        app:layout_constraintHorizontal_chainStyle="packed"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toBottomOf="@+id/textView"
        app:srcCompat="@mipmap/ic_launcher" />

    <ImageView
        android:id="@+id/imageView2"
        android:layout_width="0dp"
        android:layout_height="90dp"
        android:layout_marginLeft="5dp"
        android:layout_marginRight="5dp"
        app:layout_constraintBottom_toBottomOf="@+id/imageView1"
        app:layout_constraintEnd_toStartOf="@+id/imageView3"
        app:layout_constraintHorizontal_bias="0.5"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintStart_toEndOf="@+id/imageView1"
        app:srcCompat="@mipmap/ic_launcher" />

    <ImageView
        android:id="@+id/imageView3"
        android:layout_width="0dp"
        android:layout_height="90dp"
        app:layout_constraintBottom_toBottomOf="@+id/imageView2"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintHorizontal_bias="0.5"
        app:layout_constraintHorizontal_weight="1"
        app:layout_constraintStart_toEndOf="@+id/imageView2"

        app:srcCompat="@mipmap/ic_launcher" />

    <TextView
        android:id="@+id/textView"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text="TextView"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toTopOf="parent" />


</androidx.constraintlayout.widget.ConstraintLayout>