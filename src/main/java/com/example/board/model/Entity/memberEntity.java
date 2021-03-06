package com.example.board.model.Entity;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Data
@NoArgsConstructor
public class memberEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer memberIdx;

    @Column(nullable = false)
    private String memberName;

    @Column(nullable = false)
    private String memberIP;

}
