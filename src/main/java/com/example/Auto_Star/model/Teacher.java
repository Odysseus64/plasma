package com.example.Auto_Star.model;

import lombok.*;

import jakarta.persistence.*;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Teacher {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private int age;

    @OneToOne(mappedBy = "teacher")
    private Course course;
}
