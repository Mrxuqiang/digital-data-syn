package com.digital.controller;

import com.chinaredstar.perseus.utils.JsonUtil;
import com.digital.common.DataResult;
import com.digital.service.BrandService;
import com.digital.service.OrgService;
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
@RequestMapping("/brand")
public class BrandController {

    @Autowired
    BrandService brandService;

    @RequestMapping(value = "cleanBrand")
    public String cleanBrand() {
        try {
            brandService.cleanBrand();
        } catch (Exception e) {
        }
        return null;
    }

    @RequestMapping(value = "importBrandInfo")
    public String importBrandInfo(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = brandService.importBrandInfo();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
            return null;
        } catch (Exception e) {
        }
        return null;
    }
    @RequestMapping(value = "importBrandSeries")
    public String importBrandSeries(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = brandService.importBrandSeries();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
            return null;
        } catch (Exception e) {
        }
        return null;
    }

    @RequestMapping(value = "fixBrand")
    public String fixBrand(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = brandService.fixBrand();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
            return null;
        } catch (Exception e) {
        }
        return null;
    }

}
