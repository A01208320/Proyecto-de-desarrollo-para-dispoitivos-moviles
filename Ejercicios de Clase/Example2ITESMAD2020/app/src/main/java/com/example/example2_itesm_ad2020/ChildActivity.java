package com.example.example2_itesm_ad2020;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.TextView;

public class ChildActivity extends AppCompatActivity {

    TextView myTextView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_child);

        myTextView=findViewById(R.id.textView1);
        myTextView.setText("General Emoji");
    }

}