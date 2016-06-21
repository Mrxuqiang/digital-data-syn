package com.digital.controller;

import com.chinaredstar.perseus.utils.JsonUtil;
import com.digital.common.DataResult;
import com.digital.service.RemBrandSeriesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;

/**
 * Created by lenovo on 2016/6/21.
 */
@Controller
@RequestMapping(value = "/remBrandSeries")
public class RemBrandSeriesController {

    @Autowired
    private RemBrandSeriesService remBrandSeriesService;

    @RequestMapping(value = "/cleanBrandSeries")
    public String cleanBrandSeries(HttpServletResponse response) {
        try{
            DataResult dataResult = remBrandSeriesService.cleanBrandSeries();
            response.getWriter().write(JsonUtil.toJson(dataResult,true));
        }catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @RequestMapping(value = "/importBrandSeries")
    public String importBrandSeries(HttpServletResponse response) {
        try{
            DataResult dataResult = remBrandSeriesService.importBrandSeries();
            response.getWriter().write(JsonUtil.toJson(dataResult,true));
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }
}
