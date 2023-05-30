// Design Page Login XML file


<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:padding="16dp"
    android:background="#BDBDBD">

    <ImageView
        android:id="@+id/imageView"
        android:layout_width="match_parent"
        android:layout_height="200dp"
        android:scaleType="centerCrop"
        android:src="@drawable/cat" />

    <EditText
        android:id="@+id/editTextEmail"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:layout_below="@id/imageView"
        android:hint="Email"
        android:inputType="textEmailAddress"
        android:padding="12dp"
        android:textColor="#000000" />

    <EditText
        android:id="@+id/editTextPassword"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:layout_below="@id/editTextEmail"
        android:hint="Password"
        android:inputType="textPassword"
        android:padding="12dp"
        android:textColor="#000000" />

    <Button
        android:id="@+id/buttonLogin"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:layout_below="@id/editTextPassword"
        android:text="Login"
        android:padding="12dp"
        android:textColor="#FFFFFF" />

</RelativeLayout>

 
 
 // Java File for login
 
 
 package com.example.myapplication;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Button buttonLogin = findViewById(R.id.buttonLogin);
        buttonLogin.setOnClickListener(v -> {
            EditText editTextEmail = findViewById(R.id.editTextEmail);
            EditText editTextPassword = findViewById(R.id.editTextPassword);

            String email = editTextEmail.getText().toString();
            String password = editTextPassword.getText().toString();

            String expectedEmail = "Faiz";
            String expectedPassword = "13ddt20f1080";

            if (email.equals(expectedEmail) && password.equals(expectedPassword)) {
                // Successful login
                Intent intent = new Intent(MainActivity.this, NextActivity.class);
                startActivity(intent);
            } else {
                // Incorrect email/password
                Toast.makeText(MainActivity.this, "Please enter correct email/password", Toast.LENGTH_SHORT).show();
            }
        });
    }
}
