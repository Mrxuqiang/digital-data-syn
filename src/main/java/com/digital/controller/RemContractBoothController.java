package com.digital.controller;

import com.chinaredstar.perseus.utils.JsonUtil;
import com.digital.common.DataResult;
import com.digital.service.RemContractBoothService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by lenovo on 2016/6/20.
 */
@Controller
@RequestMapping(value = "/remContractBooth")
public class RemContractBoothController {

    @Autowired
    private RemContractBoothService remContractBoothService;

    @RequestMapping(value = "/cleanRemContractBooth")
    public String cleanRemContractBooth(HttpServletRequest request, HttpServletResponse response) {

        try {
            DataResult dataResult = remContractBoothService.cleanRemContractBooth();
            response.getWriter().write(JsonUtil.toJson(dataResult,true));
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    @RequestMapping(value = "/importRemContractBooth")
    public String importRemContractBooth(HttpServletRequest request,HttpServletResponse response) {
        try {
            DataResult dataResult = remContractBoothService.importRemContractBooth();
            response.getWriter().write(JsonUtil.toJson(dataResult,true));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
