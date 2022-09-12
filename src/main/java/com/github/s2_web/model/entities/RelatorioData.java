package com.github.s2_web.model.entities;

import java.util.ArrayList;
import java.util.List;
import java.util.TreeMap;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class RelatorioData {

    private String nome;
    private TreeMap data;

    @Override
    public String toString() {
        return "Relatorio: " + "Nome: " + nome + " - data: " + data.toString();
    }

    public List<Object> getLabels() {
        List<Object> values = new ArrayList<>();
        data.forEach((Object t, Object u) -> {

            values.add(t);
        });
        return values;
    }

    public List<Object> getValues() {
        List<Object> values = new ArrayList<>();
        data.forEach((Object t, Object u) -> {

            values.add(u);
        });
        return values;
    }
}
