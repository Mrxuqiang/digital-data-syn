package com.digital.controller;

import com.chinaredstar.perseus.utils.JsonUtil;
import com.digital.common.DataResult;
import com.digital.service.RemConBrandSeriesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by lenovo on 2016/6/20.
 */
@Controller
@RequestMapping(value="/remConBrandSeries")
public class RemConBrandSeriesController {

    @Autowired
    private RemConBrandSeriesService remConBrandSeriesService;

    @RequestMapping(value = "cleanConBrandSeries")
    public String cleanContract(HttpServletResponse response) {
        try {
            DataResult dataResult=remConBrandSeriesService.cleanConBrandSeries();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
        } catch (Exception e) {
        }
        return null;
    }

    @RequestMapping(value = "importConBrandSeries")
    public String importConBrandSeries(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = remConBrandSeriesService.importConBrandSeries();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
            return null;
        } catch (Exception e) {
        }
        return null;
    }
}
