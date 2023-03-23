package com.example.controller;

import com.example.model.ContactInfo;
//import com.example.repository.ContactInfoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api")
public class ContactInfoController {

//    final ContactInfoRepository contactInfoRepository;

//    @Autowired
//    public ContactInfoController(ContactInfoRepository contactInfoRepository) {
//        this.contactInfoRepository = contactInfoRepository;
//    }


    @GetMapping("")
    public List<ContactInfo> getAllContactInfo() {
        return List.of(new ContactInfo(1,"Jamie","Spekman","landingsoft@hotmail.com"));
    }


}
