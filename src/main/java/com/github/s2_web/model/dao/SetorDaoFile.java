package com.github.s2_web.model.dao;

import com.github.s2_web.config.ServerConfig;
import com.github.s2_web.model.entities.Relatorio;
import com.github.s2_web.model.entities.Setor;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class SetorDaoFile extends SetorDao {

    private final ServerConfig config;

    public SetorDaoFile() {
        config = new ServerConfig();
    }

    @Override
    public List<Setor> getSetores() {
        File f = new File(config.getProps().getProperty("server.path.setores"));
        File[] dirs = f.listFiles();

        List<Setor> setores = new ArrayList<>();
        for (int i = 0; i < dirs.length; i++) {
            File dir = dirs[i];
            File[] rels = dir.listFiles();
            List<Relatorio> relatorios = new ArrayList<>();
            for (int j = 0; j < rels.length; j++) {
                File rel = rels[j];
                relatorios.add(new Relatorio(j, rel.getName().replace(".sql", "")));
            }
            setores.add(new Setor(i, dir.getName(), relatorios));
        }
        return setores;
    }
}
