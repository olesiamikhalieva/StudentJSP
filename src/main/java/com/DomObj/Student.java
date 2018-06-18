package com.DomObj;

import lombok.Data;

@Data
public class Student {
    String name;
    String sername;
    String gender;
    String phone;

    public Student(String name, String sername, String gender, String phone) {
        this.name = name;
        this.sername = sername;
        this.gender = gender;
        this.phone = phone;
    }
}
