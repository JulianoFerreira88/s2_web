package com.github.s2_web.controller;

import com.github.s2_web.config.ServerConfig;
import com.github.s2_web.log.Logger;
import com.github.s2_web.model.entities.RelatorioData;
import com.github.s2_web.model.service.RelatorioService;
import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RelatorioController extends HttpServlet {

    private final ServerConfig config = new ServerConfig();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        Connection con = (Connection) request.getAttribute("conexao");
        String setor = request.getParameter("setor");
        String relatorio = request.getParameter("relatorio");
        relatorio = relatorio.trim();
        File fSetor = new File(config.getProps().getProperty("server.path.setores") + setor);
        System.out.println("Setor: " + fSetor);
        for (int i = 0; i < fSetor.listFiles().length; i++) {
            File listFile = fSetor.listFiles()[i];
            String rel = listFile.getName().replace(".sql", "");
            if (rel.equals(relatorio)) {
                RelatorioService service = new RelatorioService(con, listFile);
                RelatorioData data = new RelatorioData(
                        rel,
                        service.getRelatorio().getData());

                request.setAttribute("data", data);

            }
        }

        Logger log = new Logger(relatorio, request.getRemoteAddr(), new Date(), new File(config.getProps().getProperty("server.file.log")));
        log.log();
        request.getRequestDispatcher("/WEB-INF/pages/relatorio.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {

        }
    }

}
