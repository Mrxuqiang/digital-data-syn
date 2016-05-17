package com.digital.controller;

import com.digital.service.OrgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * Created by ccdashu on 16/3/25.
 */
@Controller
@RequestMapping("/syn")
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
