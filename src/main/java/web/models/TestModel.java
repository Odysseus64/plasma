package web.models;

import javax.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "AUTO")
public class TestModel {
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