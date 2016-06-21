package com.digital.controller;

import com.chinaredstar.perseus.utils.JsonUtil;
import com.digital.common.DataResult;
import com.digital.service.BoothService;
import com.digital.service.RemBoothService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Created by ccdashu on 16/3/25.
 */
@Controller
@RequestMapping("/remBooth")
public class RemBoothController {

    @Autowired
    RemBoothService remBoothService;

    @RequestMapping(value = "cleanRem")
    public String clean(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = remBoothService.cleanRem();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
        } catch (Exception e) {
        }
        return null;
    }

    @RequestMapping(value = "importBoothRem")
    public String importOrg(HttpServletRequest request, HttpServletResponse response) {
        try {
            DataResult dataResult = remBoothService.importBoothRem();
            response.getWriter().write(JsonUtil.toJson(dataResult, true));
            return null;
        } catch (Exception e) {
        }
        return null;
    }
}
