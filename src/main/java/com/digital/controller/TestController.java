package com.digital.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Created by ccdashu on 16/3/25.
 */
@Controller
@RequestMapping("/syn")
public class TestController {
    private static Logger logger = LoggerFactory.getLogger(TestController.class);

    @RequestMapping(value = "listTest/", method = RequestMethod.GET, produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String listTest(HttpServletRequest request, HttpServletResponse response) {
        try {

        } catch (Exception e) {
            logger.warn(e.getMessage());
        }
        return null;
    }
}
