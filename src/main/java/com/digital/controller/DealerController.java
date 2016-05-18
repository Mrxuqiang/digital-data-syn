package com.digital.controller;

import com.chinaredstar.perseus.utils.JsonUtil;
import com.digital.common.DataResult;
import com.digital.service.BrandService;
import com.digital.service.DealerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * 经销商
 * Created by ccdashu on 16/3/25.
 */
@Controller
@RequestMapping("/dealer")
public class DealerController {


    @Autowired
    DealerService dealerService;

    @RequestMapping(value = "cleanDealer")
    public String cleanDealer(HttpServletResponse response) {
        try {
            DataResult dataResult=dealerService.cleanDealer();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
        } catch (Exception e) {
        }
        return null;
    }

    @RequestMapping(value = "importDealer")
    public String importDealer(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = dealerService.importDealer();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
            return null;
        } catch (Exception e) {
        }
        return null;
    }

}
