package com.digital.controller;

import com.chinaredstar.perseus.utils.JsonUtil;
import com.digital.common.DataResult;
import com.digital.service.RemDealService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by lenovo on 2016/6/20.
 */
@Controller
@RequestMapping("/remDealer")
public class RemDealerController {

    private static Logger logger = LoggerFactory.getLogger(RemDealerController.class);

    @Autowired
    private RemDealService remDealService;

    @RequestMapping(value = "cleanDealer")
    public String cleanDealer(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = remDealService.cleanDealer();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
        } catch (Exception e) {
        }
        return null;
    }

    @RequestMapping(value = "importDealer")
    public String importDealer(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = remDealService.importDealer();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
            return null;
        } catch (Exception e) {
        }
        return null;
    }

}
