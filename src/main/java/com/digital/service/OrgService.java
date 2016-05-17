package com.digital.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

/**
 * Created by CC on 16/5/17.
 */
@Component
public class OrgService {


    @Autowired
    JdbcTemplate mysqlJdbcTemplate;

    @Autowired
    JdbcTemplate omsOracleJdbcTemplate;

    public String importOrgData() {
        try {
            int count = mysqlJdbcTemplate.queryForObject("select count(1) from oms_org", Integer.class);
            int _count = omsOracleJdbcTemplate.queryForObject("select count(1) from ET_PUBIF_RANC", Integer.class);
            System.out.println(count + "-->>>>>--" + _count);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


}
