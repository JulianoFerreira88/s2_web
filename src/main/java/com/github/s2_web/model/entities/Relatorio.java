package com.github.s2_web.model.entities;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode
@ToString
public class Relatorio implements Comparable<Relatorio> {

    private Integer id;
    private String nome;

    @Override
    public int compareTo(Relatorio t) {
        return this.getNome().compareTo(t.getNome());
    }

}
