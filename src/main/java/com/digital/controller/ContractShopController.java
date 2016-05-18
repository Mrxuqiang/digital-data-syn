package com.digital.controller;

import com.chinaredstar.perseus.utils.JsonUtil;
import com.digital.common.DataResult;
import com.digital.service.ContractShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Created by ccdashu on 16/3/25.
 */
@Controller
@RequestMapping("/syn/contractShop")
public class ContractShopController {


    @Autowired
    ContractShopService contractShopService;

    @RequestMapping(value = "cleanContractShop")
    public String cleanContractShop(HttpServletResponse response) {
        try {
            DataResult dataResult=contractShopService.cleanContractShop();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
        } catch (Exception e) {
        }
        return null;
    }

    @RequestMapping(value = "importContractShop")
    public String importContractShop(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = contractShopService.importContractShop();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
            return null;
        } catch (Exception e) {
        }
        return null;
    }

    @RequestMapping(value = "fixContractShop")
    public String fixContractShop(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = contractShopService.fixContractShop();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
            return null;
        } catch (Exception e) {
        }
        return null;
    }
}
