package com.digital.controller;

import com.chinaredstar.perseus.utils.JsonUtil;
import com.digital.common.DataResult;
import com.digital.service.BrandService;
import com.digital.service.RemBrandService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * 品牌相关
 * Created by ccdashu on 16/3/25.
 */
@Controller
@RequestMapping("/remBrand")
public class RemBrandController {

    @Autowired
    RemBrandService remBrandService;

    @RequestMapping(value = "cleanBrandRem")
    public String cleanBrand(HttpServletResponse response) {
        try {
            DataResult dataResult=remBrandService.cleanBrandRem();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
        } catch (Exception e) {
        }
        return null;
    }

    @RequestMapping(value = "importBrandInfoRem")
    public String importBrandInfo(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = remBrandService.importBrandInfoRem();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
            return null;
        } catch (Exception e) {
        }
        return null;
    }
    @RequestMapping(value = "importBrandSeries")
    public String importBrandSeries(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = remBrandService.importBrandSeriesRem();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
            return null;
        } catch (Exception e) {
        }
        return null;
    }

}
