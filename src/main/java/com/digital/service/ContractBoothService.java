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
 * Created by lenovo on 2016/5/17.
 */
@Component
public class ContractBoothService {
    private static Logger logger = LoggerFactory.getLogger(OrgService.class);

    @Autowired
    JdbcTemplate mysqlJdbcTemplate;

    @Autowired
    JdbcTemplate omsOracleJdbcTemplate;

    @Autowired
    JdbcTemplate remOracleJdbcTemplate;

    public DataResult clean() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            int count = mysqlJdbcTemplate.queryForObject("select count(1) from oms_contract_booth", Integer.class);
            dataResult.setTotalCount(count);
            mysqlJdbcTemplate.update("truncate table oms_contract_booth");
            dataResult.setEndTime(System.currentTimeMillis());
            return dataResult;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public DataResult importContractBooth() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            //从REM读取数据
            List<Map<String, Object>> list = omsOracleJdbcTemplate.queryForList("SELECT \n" +
                    "''booth_id,\n" +
                    "CONBF003 booth_id_uuid,\n" +
                    "''contract_id,\n" +
                    "CONBF001 contract_id_uuid\n" +
                    "FROM " + Constants.database + ".TB_CONBF");
            int successCount = 0;
            int errorCount = 0;
            for (Map map : list) {
                try {
                    String booth_id = StringUtil.ObjectToString(map.get("booth_id"));
                    String booth_id_uuid = StringUtil.ObjectToString(map.get("booth_id_uuid"));
                    String contract_id = StringUtil.ObjectToString(map.get("contract_id"));
                    String contract_id_uuid = StringUtil.ObjectToString(map.get("contract_id_uuid"));
                    String insertSql = "insert into oms_contract_booth(booth_id,booth_id_uuid,contract_id,contract_id_uuid)values(?,?,?,?)";
                    mysqlJdbcTemplate.update(insertSql, new Object[]{booth_id,booth_id_uuid, contract_id, contract_id_uuid});
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
