package com.example.Auto_Star.model;

import lombok.*;

import jakarta.persistence.*;
import java.util.List;

@Entity
@NoArgsConstructor
@Getter
@Setter
@ToString
@Table(name = "company")
public class Company {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String locatedCountry;
    @OneToMany(mappedBy = "company", cascade = CascadeType.ALL)
    private List<Course> courseList;

    @OneToMany(mappedBy = "company", cascade = CascadeType.ALL)
    private List<Group> group;
}