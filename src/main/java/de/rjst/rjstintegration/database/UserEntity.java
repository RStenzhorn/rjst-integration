package de.rjst.rjstintegration.database;

import de.rjst.rjstintegration.FlowType;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@ToString
@Getter
@Setter
@Entity
@Table(name = "player")
public class UserEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    private String name;

    private Integer status;

    @Enumerated(EnumType.STRING)
    private FlowType flowType;

}