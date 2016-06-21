package com.digital.controller;

import com.chinaredstar.perseus.utils.JsonUtil;
import com.digital.common.DataResult;
import com.digital.service.ContractService;
import com.digital.service.RemContractService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by lenovo on 2016/6/20.
 */
@Controller
@RequestMapping("/remcontract")
public class RemContractController {


    @Autowired
    RemContractService remContractService;


    @RequestMapping(value = "cleanContract")
    public String cleanContract(HttpServletResponse response) {
        try {
            DataResult dataResult=remContractService.cleanContract();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
        } catch (Exception e) {
        }
        return null;
    }

    @RequestMapping(value = "importContract")
    public String importContract(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = remContractService.importContract();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
            return null;
        } catch (Exception e) {
        }
        return null;
    }

}
