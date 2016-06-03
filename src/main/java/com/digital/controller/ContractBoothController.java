package com.digital.controller;

import com.chinaredstar.perseus.utils.JsonUtil;
import com.digital.common.DataResult;
import com.digital.service.ContractBoothService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Created by ccdashu on 16/3/25.
 */
@Controller
@RequestMapping("/contractBooth")
public class ContractBoothController {


    @Autowired
    ContractBoothService contractBoothService;

    @RequestMapping(value = "clean")
    public String clean(HttpServletResponse response) {
        try {
            DataResult dataResult=contractBoothService.clean();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
        } catch (Exception e) {
        }
        return null;
    }

    @RequestMapping(value = "importContractBooth")
    public String importContractBooth(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = contractBoothService.importContractBooth();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
            return null;
        } catch (Exception e) {
        }
        return null;
    }
}
