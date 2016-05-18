package com.digital.controller;

import com.chinaredstar.perseus.utils.JsonUtil;
import com.digital.common.DataResult;
import com.digital.service.OrgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * 组织机构表
 * Created by ccdashu on 16/3/25.
 */
@Controller
@RequestMapping("/org")
public class OrgController {


    @Autowired
    OrgService orgService;

    @RequestMapping(value = "cleanOrg")
    public String cleanOrg(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = orgService.cleanOrg();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
        } catch (Exception e) {
        }
        return null;
    }

    @RequestMapping(value = "importOrg")
    public String importOrg(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = orgService.importOrg();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
            return null;
        } catch (Exception e) {
        }
        return null;
    }

}
