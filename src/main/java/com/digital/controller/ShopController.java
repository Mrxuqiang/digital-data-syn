package com.digital.controller;

import com.chinaredstar.perseus.utils.JsonUtil;
import com.digital.common.DataResult;
import com.digital.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Created by ccdashu on 16/3/25.
 */
@Controller
@RequestMapping("/shop")
public class ShopController {

    @Autowired
    ShopService shopService;

    @RequestMapping(value = "clean")
    public String clean(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = shopService.clean();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
        } catch (Exception e) {
        }
        return null;
    }

    @RequestMapping(value = "importShop")
    public String importOrg(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = shopService.importShop();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
            return null;
        } catch (Exception e) {
        }
        return null;
    }

    @RequestMapping(value = "fixShop")
    public String OmsShopInfo(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = shopService.fixShop();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
            return null;
        } catch (Exception e) {
        }
        return null;
    }
}
