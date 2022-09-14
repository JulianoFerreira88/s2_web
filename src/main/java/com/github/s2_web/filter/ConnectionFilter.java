package com.github.s2_web.filter;

import com.github.s2_web.model.connection.ConnectionFactory;
import java.io.IOException;
import java.sql.Connection;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class ConnectionFilter implements Filter {

    @Override
    public void init(FilterConfig fc) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest sr, ServletResponse sr1, FilterChain chain) throws IOException, ServletException {
        Connection con = ConnectionFactory.getConnection();

        sr.setAttribute("conexao", con);

        try {

            chain.doFilter(sr, sr1);

        } catch (Exception e) {
            System.out.println(e);
        }

    }

    @Override
    public void destroy() {

    }

}
