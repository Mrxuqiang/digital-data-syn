package com.digital.common;

import com.chinaredstar.perseus.utils.PropertiesUtil;

/**
 * Created by CC on 16/5/19.
 */
public class Constants {

    public static String database = PropertiesUtil.getProperty("common.properties").get("database");

    public static String remDatabase = PropertiesUtil.getProperty("common.properties").get("remDatabase");
}
