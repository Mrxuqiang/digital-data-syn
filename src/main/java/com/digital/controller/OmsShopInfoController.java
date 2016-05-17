package com.digital.controller;

import com.chinaredstar.perseus.utils.JsonUtil;
import com.digital.common.DataResult;
import com.digital.service.OmsShopInfoService;
import com.digital.service.OrgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Created by ccdashu on 16/3/25.
 */
@Controller
@RequestMapping("/omsShopInfo")
public class OmsShopInfoController {


    @Autowired
    OmsShopInfoService omsShopInfoService;

    @RequestMapping(value = "cleanOrg")
    public String cleanOrg() {
        try {
            omsShopInfoService.cleanOrg();
        } catch (Exception e) {
        }
        return null;
    }

    @RequestMapping(value = "importOrg")
    public String importOrg(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = omsShopInfoService.omsShopInfo();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
            return null;
        } catch (Exception e) {
        }
        return null;
    }

}
