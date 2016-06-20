package com.digital.service;

import com.digital.common.DataResult;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

/**
 * Created by Mr.xu on 2016/6/20
 * 用途:
 */
@Component
public class TestService {
    private static Logger logger = LoggerFactory.getLogger(TestService.class);
    @Autowired
    JdbcTemplate mysqlremJdbcTemplate;


    public DataResult test() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            int count = mysqlremJdbcTemplate.queryForObject("select count(1) from oms_org", Integer.class);
            dataResult.setTotalCount(count);
            dataResult.setEndTime(System.currentTimeMillis());
            return dataResult;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
