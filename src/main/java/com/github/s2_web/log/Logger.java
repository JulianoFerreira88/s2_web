package com.github.s2_web.log;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.StandardOpenOption;
import java.util.Date;

public class Logger {

    private final String relatorio;
    private final String ip;
    private final Date data;
    private final File f;

    public Logger(String relatorio, String ip, Date data, File f) {
        this.relatorio = relatorio;
        this.ip = ip;
        this.data = data;
        this.f = f;

    }

    public void log() {
        StringBuilder sb = new StringBuilder();
        sb.append("Data: ").append(data);
        sb.append(" - Relatorio: ").append(relatorio).append(" - host: ").append(ip);
        sb.append("\n");
        try {
            Files.write(f.toPath(), sb.toString().getBytes(), StandardOpenOption.APPEND);
        } catch (Exception e) {
            System.out.println("Error logging: " + e);
        }
    }

}
