package com.digital.util;

import net.sourceforge.pinyin4j.PinyinHelper;
import net.sourceforge.pinyin4j.format.HanyuPinyinCaseType;
import net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat;
import net.sourceforge.pinyin4j.format.HanyuPinyinToneType;
import net.sourceforge.pinyin4j.format.HanyuPinyinVCharType;

/**
 * Created by CC on 16/5/17.
 */
public class PinYinUtil {

    /**
     * 获取首字母
     *
     * @param str
     * @return
     */
    public static String getFirstPinYin(String tempStr) {
        try {
            StringBuffer sb = new StringBuffer();
            HanyuPinyinOutputFormat format = new HanyuPinyinOutputFormat();
            format.setCaseType(HanyuPinyinCaseType.LOWERCASE);
            format.setToneType(HanyuPinyinToneType.WITHOUT_TONE);
            format.setVCharType(HanyuPinyinVCharType.WITH_U_UNICODE);
            if (tempStr != null) {
                for (char a : tempStr.toCharArray()) {
//                    System.out.println(a);
                    String[] pinyin = PinyinHelper.toHanyuPinyinStringArray(a, format);
                    if(pinyin.length>0){
                        if (pinyin[0].length() > 0) {
                            sb.append(pinyin[0].substring(0, 1));
                        }
                    }
//                    for (String str : pinyin) {
//
//                    }
                }
            }
            return sb.toString();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "";
    }

}
