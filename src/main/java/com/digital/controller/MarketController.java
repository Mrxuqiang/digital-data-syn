package com.digital.controller;

import com.chinaredstar.perseus.utils.JsonUtil;
import com.digital.common.DataResult;
import com.digital.service.MarketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Created by ccdashu on 16/3/25.
 */
@Controller
@RequestMapping("/market")
public class MarketController {

    @Autowired
    MarketService marketService;

    @RequestMapping(value = "clean")
    public String clean(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = marketService.clean();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
        } catch (Exception e) {
        }
        return null;
    }

    @RequestMapping(value = "importMarket")
    public String importMarket(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = marketService.importMarket();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
            return null;
        } catch (Exception e) {
        }
        return null;
    }

}
