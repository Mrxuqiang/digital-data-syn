package com.digital.controller;

import com.chinaredstar.perseus.utils.JsonUtil;
import com.digital.common.DataResult;
import com.digital.service.ContractService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Created by ccdashu on 16/3/25.
 */
@Controller
@RequestMapping("/syn/contract")
public class ContractController {


    @Autowired
    ContractService contractService;


    @RequestMapping(value = "cleanContract")
    public String cleanContract(HttpServletResponse response) {
        try {
            DataResult dataResult=contractService.cleanContract();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
        } catch (Exception e) {
        }
        return null;
    }

    @RequestMapping(value = "importContract")
    public String importContract(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = contractService.importContract();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
            return null;
        } catch (Exception e) {
        }
        return null;
    }

    @RequestMapping(value = "fixContract")
    public String fixContract(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = contractService.fixContract();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
            return null;
        } catch (Exception e) {
        }
        return null;
    }

}
