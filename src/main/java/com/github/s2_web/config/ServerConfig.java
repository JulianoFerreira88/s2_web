package com.github.s2_web.config;

import java.io.FileInputStream;
import java.util.Properties;

public class ServerConfig {

    private final Properties p;

    public ServerConfig() {
        this.p = new Properties();
        try {
            p.load(new FileInputStream(System.getProperty("user.home") + "/opt/tomcat/server.properties"));

            //p.load(new FileInputStream(System.getProperty("user.home") + "/server.properties"));
        } catch (Exception e) {
            System.err.println("Error reading server properties!!! " + e.getMessage());
        }
    }

    public Properties getProps() {
        return p;
    }
}
