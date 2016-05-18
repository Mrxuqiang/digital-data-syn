package com.digital.controller;

import com.digital.service.OrgService;
import com.digital.util.PinYinUtil;
import net.sourceforge.pinyin4j.PinyinHelper;
import net.sourceforge.pinyin4j.format.HanyuPinyinCaseType;
import net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat;
import net.sourceforge.pinyin4j.format.HanyuPinyinToneType;
import net.sourceforge.pinyin4j.format.HanyuPinyinVCharType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * Created by ccdashu on 16/3/25.
 */
@Controller
@RequestMapping("/test")
public class TestController {
    @Autowired
    OrgService orgService;

    @RequestMapping(value = "listTest/")
    public String listTest() {
        try {
//            orgService.importOrg();
        } catch (Exception e) {
        }
        return null;
    }

}
