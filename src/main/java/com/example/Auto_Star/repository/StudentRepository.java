package com.example.Auto_Star.repository;

import com.example.Auto_Star.model.Student;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StudentRepository extends JpaRepository<Student, Long> {
}
