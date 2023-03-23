package com.example.model;

//import jakarta.persistence.*;
import jakarta.persistence.Column;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.boot.autoconfigure.domain.EntityScan;

//@Entity
//@Table(name = "contactinfo")
//@NoArgsConstructor
@Getter
@Setter
@AllArgsConstructor
public class ContactInfo {

//    @Id
//    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Column(name = "voornaam")
    private String voornaam;

    @Column(name = "achternaam")
    private String achternaam;

    @Column(name = "email")
    private String email;


    public ContactInfo(String voornaam, String achternaam, String email) {
        this.voornaam = voornaam;
        this.achternaam = achternaam;
        this.email = email;
    }
}
