package com.digital.service;

import com.digital.common.Constants;
import com.digital.common.DataResult;
import com.digital.util.StringUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

/**
 * Created by lenovo on 2016/6/20.
 */
@Component
public class RemContractBoothService {
    private static Logger logger = LoggerFactory.getLogger(RemContractBoothService.class);

    @Autowired
    private JdbcTemplate mysqlremJdbcTemplate;

    @Autowired
    private JdbcTemplate remOracleJdbcTemplate;

    public DataResult cleanRemContractBooth() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            int count = mysqlremJdbcTemplate.queryForObject("select count(1) from oms_contract_booth", Integer.class);
            dataResult.setTotalCount(count);
            mysqlremJdbcTemplate.update("truncate table oms_contract_booth");
            dataResult.setEndTime(System.currentTimeMillis());
            return dataResult;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public DataResult importRemContractBooth() {

        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            //从REM读取数据
            List<Map<String, Object>> list = remOracleJdbcTemplate.queryForList("SELECT " +
                    "BOOTHID booth_id_uuid," +
                    "BCONTRACTID contract_id_uuid" +
                    "FROM " + Constants.remDatabase + ".C_BOOTHCONTRACT");
            int successCount = 0;
            int errorCount = 0;
            for (Map map : list) {
                try {
                    String booth_id_uuid = StringUtil.ObjectToString(map.get("booth_id_uuid"));
                    String contract_id_uuid = StringUtil.ObjectToString(map.get("contract_id_uuid"));

                    String boothIdSql = "select id booth_id from oms_booth where id_uuid=?";
                    List<Map<String,Object>> boothIdList= mysqlremJdbcTemplate.queryForList(boothIdSql,new Object[]{booth_id_uuid});
                    Integer booth_id = Integer.valueOf(StringUtil.ObjectToString(boothIdList.get(0).get("booth_id")));

                    String contractIdSql = "select id contract_id from oms_contract where id_uuid=?";
                    List<Map<String,Object>> contractIdList= mysqlremJdbcTemplate.queryForList(contractIdSql,new Object[]{contract_id_uuid});
                    Integer contract_id = Integer.valueOf(StringUtil.ObjectToString(contractIdList.get(0).get("contract_id")));


                    String insertSql = "insert into oms_contract_booth(booth_id,booth_id_uuid,contract_id,contract_id_uuid)values(?,?,?,?)";
                    mysqlremJdbcTemplate.update(insertSql, new Object[]{booth_id,booth_id_uuid, contract_id,contract_id_uuid});
                    logger.info(successCount + ">>" + map + "");
                    successCount++;
                } catch (Exception e) {
                    errorCount++;
                    e.printStackTrace();
                }
            }
            dataResult.setErrorCount(errorCount);
            dataResult.setSuccessCount(successCount);
            dataResult.setEndTime(System.currentTimeMillis());
            return dataResult;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;

    }
}
