package com.digital.controller;

import com.chinaredstar.perseus.utils.JsonUtil;
import com.digital.common.DataResult;
import com.digital.service.OrgService;
import com.digital.service.RemOrgService;
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
@RequestMapping("/orgRem")
public class RemOrgController {


    @Autowired
    RemOrgService remOrgService;

    @RequestMapping(value = "cleanOrgRem")
    public String cleanOrg(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = remOrgService.cleanOrgRem();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
        } catch (Exception e) {
        }
        return null;
    }

    @RequestMapping(value = "importOrgRem")
    public String importOrg(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = remOrgService.importOrgRem();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
            return null;
        } catch (Exception e) {
        }
        return null;
    }

}
