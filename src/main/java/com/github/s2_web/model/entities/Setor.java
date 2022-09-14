package com.github.s2_web.model.entities;

import java.util.List;
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
public class Setor implements Comparable<Setor> {

    private Integer id;
    private String nome;
    private List<Relatorio> relatorios;

    @Override
    public int compareTo(Setor t) {
        return this.getNome().compareTo(t.getNome());
    }
}
