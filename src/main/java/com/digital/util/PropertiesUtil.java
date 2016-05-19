package com.digital.util;


import java.io.*;
import java.util.*;

public class PropertiesUtil {
    public static Map<String, String> getProperty(String filePath) throws IOException {
        Map map = new HashMap();
        InputStream in = PropertiesUtil.class.getClassLoader().getResourceAsStream(filePath);
        Properties p = new Properties();
        try {
            p.load(in);
        } catch (IOException e) {
            e.printStackTrace();

        }
        Set set = p.keySet();

        for (Iterator iterator = set.iterator(); iterator.hasNext(); ) {
            String key = (String) iterator.next();
            map.put(key, p.get(key));
        }
        return map;
    }

    public static void setProperty(String filePath, String key, String value) throws IOException {
        File file = new File(filePath);
        Properties properties = new Properties();
        if (!file.exists())
            file.createNewFile();
        InputStream inputStream = new FileInputStream(file);
        properties.load(inputStream);
        //修改之前必须关闭
        inputStream.close();
        OutputStream outputStream = new FileOutputStream(filePath);
        properties.setProperty(key, value);
        properties.store(outputStream, "Update '" + key + "' value");
        outputStream.close();
    }


    public static void main(String[] args) throws IOException {
        setProperty("/ddmap/jar/TimePoint.properties", "endtime", "1111-09-01 00:54");
    }
}