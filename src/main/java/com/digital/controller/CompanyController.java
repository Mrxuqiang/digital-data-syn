package com.digital.controller;

import com.chinaredstar.perseus.utils.JsonUtil;
import com.digital.common.DataResult;
import com.digital.service.CompanyService;
import com.digital.service.OrgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * 工厂品牌公司
 * Created by ccdashu on 16/3/25.
 */
@Controller
@RequestMapping("/syn/company")
public class CompanyController {

    @Autowired
    CompanyService companyService;

    @RequestMapping(value = "cleanCompany")
    public String cleanCompany(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = companyService.cleanCompany();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
        } catch (Exception e) {
        }
        return null;
    }

    @RequestMapping(value = "importCompany")
    public String importCompany(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = companyService.importCompany();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
            return null;
        } catch (Exception e) {
        }
        return null;
    }

}
