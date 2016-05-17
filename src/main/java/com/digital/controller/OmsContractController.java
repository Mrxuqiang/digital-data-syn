package com.digital.controller;

import com.chinaredstar.perseus.utils.JsonUtil;
import com.digital.common.DataResult;
import com.digital.service.OmsContractService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Created by ccdashu on 16/3/25.
 */
@Controller
@RequestMapping("/omsContract")
public class OmsContractController {


    @Autowired
    OmsContractService omsContractService;


    @RequestMapping(value = "cleanOrg")
    public String cleanOrg() {
        try {
            omsContractService.cleanOrg();
        } catch (Exception e) {
        }
        return null;
    }

    @RequestMapping(value = "importOrg")
    public String importOrg(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = omsContractService.importOrg();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
            return null;
        } catch (Exception e) {
        }
        return null;
    }

    @RequestMapping(value = "updateContract")
    public String updateContract(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = omsContractService.taskOmsContract();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
            return null;
        } catch (Exception e) {
        }
        return null;
    }

}