package com.github.s2_web.model.service;

import com.github.s2_web.model.entities.RelatorioData;
import com.github.s2_web.model.util.FileToString;
import java.io.File;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.TreeMap;

public class RelatorioService {

    private final Connection con;
    private final File relatorio;

    public RelatorioService(Connection con, File relatorio) {
        this.con = con;
        this.relatorio = relatorio;
    }

    public RelatorioData getRelatorio() {
        try {
            FileToString fts = new FileToString(relatorio);
            String query = fts.fileToString();
            RelatorioData rel = new RelatorioData();
            System.out.println(query);
            Statement st = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            ResultSet rs = st.executeQuery(query);
            TreeMap<String, Object> map = new TreeMap<>();
            rs.first();
            while (!rs.isAfterLast()) {
                String ano = rs.getString(1);
                double valor = rs.getDouble(2);
                map.put(ano, valor);
                rs.next();
            }

            rel.setData(map);
            rel.setNome(relatorio.getName().replace(".sql", ""));

            return rel;
        } catch (Exception e) {
            System.out.println("Error ao criar resultSet: " + e);
            return null;
        }
    }
}
