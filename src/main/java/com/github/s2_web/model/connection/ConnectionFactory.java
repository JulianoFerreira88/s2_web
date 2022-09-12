package com.github.s2_web.model.connection;

import com.github.s2_web.config.ServerConfig;
import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {

    private static Connection CON = null;

    public static Connection getConnection() {
        try {
            if (CON == null) {
                ServerConfig config = new ServerConfig();
                CON = DriverManager.getConnection(
                        config.getProps().getProperty("db.url"),
                        config.getProps().getProperty("db.user"),
                        config.getProps().getProperty("db.pass"));
            }
        } catch (Exception e) {
            System.err.println("Error on get Connection!! " + e.getMessage());
        }
        return CON;
    }
}
