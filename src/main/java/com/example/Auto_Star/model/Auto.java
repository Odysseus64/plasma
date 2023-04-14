package com.example.Auto_Star.model;

import jakarta.persistence.*;
import lombok.*;
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "AUTO")
public class Auto {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "Id")
    private Long id;
    @Column(name = "Name")
    private String name;
    @Column(name = "Model", columnDefinition = "text")
    private String model;
    @Column(name = "City")
    private String city;
    @Column(name = "Owner")
    private String owner;
    @Column(name = "Price")
    private int price;
}