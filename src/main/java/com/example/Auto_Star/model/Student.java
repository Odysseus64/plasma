package com.example.Auto_Star.model;

import lombok.*;

import jakarta.persistence.*;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private int age;
    private StudyFormat studyFormat;

    @ManyToOne
    @JoinTable(name = "group_student")
    private Group group;
}
