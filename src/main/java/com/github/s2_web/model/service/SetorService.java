package com.github.s2_web.model.service;

import com.github.s2_web.model.dao.SetorDao;
import com.github.s2_web.model.dao.SetorDaoFile;
import com.github.s2_web.model.entities.Setor;
import java.util.List;

public class SetorService {

    private final SetorDao dao;

    public SetorService() {
        dao = new SetorDaoFile();
    }

    public List<Setor> getSetores() {
        return dao.getSetores();
    }
}
