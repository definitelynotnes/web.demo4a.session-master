package com.bootcamp.webshoppe.bean;

import lombok.Data;

@Data
public class PersonBean {
    private FullNameBean fullName; // setFullName & getFullName
    private AddressBean address; // setAddress & getAddress
    private int age;
    
}
