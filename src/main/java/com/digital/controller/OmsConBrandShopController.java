package com.digital.controller;

import com.chinaredstar.perseus.utils.JsonUtil;
import com.digital.common.DataResult;
import com.digital.service.OmsContBrandShopService;
import com.digital.service.OmsContractShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Created by ccdashu on 16/3/25.
 */
@Controller
@RequestMapping("/omsContBrandShop")
public class OmsConBrandShopController {


    @Autowired
    OmsContBrandShopService omsContBrandShopService;

    @RequestMapping(value = "cleanOrg")
    public String cleanOrg() {
        try {
            omsContBrandShopService.cleanOrg();
        } catch (Exception e) {
        }
        return null;
    }

    @RequestMapping(value = "importOrg")
    public String importOrg(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = omsContBrandShopService.omsShopInfo();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
            return null;
        } catch (Exception e) {
        }
        return null;
    }

}
