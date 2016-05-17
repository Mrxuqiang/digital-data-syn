package com.digital.util;

import com.chinaredstar.perseus.utils.DateUtil;

/**
 * Created by CC on 16/5/17.
 */
public class StringUtil {
    /**
     * 把Obj转化成String
     *
     * @param obj
     * @return
     */
    public static String ObjectToString(Object obj) {
        try {
            return obj.toString();
        } catch (Exception e) {
        }
        return null;
    }

    /**
     * 把Obj转化成日期字串
     *
     * @param obj
     * @return
     */
    public static String ObjectToDateString(Object obj) {
        try {
            String dateStr = ObjectToString(obj);
            if (dateStr.contains("9999")) {
                return null;
            } else {
                return DateUtil.formatDate(DateUtil.parse(dateStr, DateUtil.datetimePattern));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


}
