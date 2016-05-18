package com.digital.controller;

import com.chinaredstar.perseus.utils.JsonUtil;
import com.digital.common.DataResult;
import com.digital.service.ConBrandSeriesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Created by ccdashu on 16/3/25.
 * 合同代理品牌系列
 */
@Controller
@RequestMapping("/conBrandSeries")
public class ConBrandSeriesController {


    @Autowired
    ConBrandSeriesService conBrandSeriesService;

    @RequestMapping(value = "cleanConBrandSeries")
    public String cleanOrg() {
        try {
            conBrandSeriesService.cleanConBrandSeries();
        } catch (Exception e) {
        }
        return null;
    }

    @RequestMapping(value = "importConBrandSeries")
    public String importOrg(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = conBrandSeriesService.importConBrandSeries();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
            return null;
        } catch (Exception e) {
        }
        return null;
    }

    @RequestMapping(value = "fixConBrandSeries")
    public String fixConBrandSeries(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = conBrandSeriesService.fixContractBrandSeries();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
            return null;
        } catch (Exception e) {
        }
        return null;
    }

}
