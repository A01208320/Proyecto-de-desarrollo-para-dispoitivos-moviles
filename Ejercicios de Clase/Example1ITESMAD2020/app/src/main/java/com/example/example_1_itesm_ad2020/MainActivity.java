package com.example.example_1_itesm_ad2020;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    Button myButton;
    View myView;
    TextView mytextView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        myButton = findViewById(R.id.button);
        myView = findViewById(R.id.text_view);
        mytextView = findViewById(R.id.text_view);
        mytextView.setText("Hello there");
    }
}