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
public class ContractService {
    private static Logger logger = LoggerFactory.getLogger(OrgService.class);

    @Autowired
    JdbcTemplate mysqlJdbcTemplate;

    @Autowired
    JdbcTemplate omsOracleJdbcTemplate;

    @Autowired
    JdbcTemplate remOracleJdbcTemplate;

    public DataResult cleanContract() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            int count = mysqlJdbcTemplate.queryForObject("select count(1) from oms_contract", Integer.class);
            dataResult.setTotalCount(count);
            mysqlJdbcTemplate.update("truncate table oms_contract");
            dataResult.setEndTime(System.currentTimeMillis());
            return dataResult;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public DataResult importContract() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            List<Map<String, Object>> list = omsOracleJdbcTemplate.queryForList("SELECT \n" +
                    "CONBE_ID id_uuid,\n" +
                    "''contract_number,\n" +
                    "CONBE003 contract_code,\n" +
                    "''dealer_id,\n" +
                    "CONBE008 dealer_id_uuid,\n" +
                    "CONBE011 contract_startDate,\n" +
                    "CONBE012 contract_endDate,\n" +
                    "CONBE007 contract_type_id,\n" +
                    "CONBE076 sap_contract_code,\n" +
                    "CONBE025 contract_status_code,\n" +
                    "CONBE023 remark\n" +
                    "from " + Constants.database + ".TB_CONBE where 1=1");
            int successCount = 0;
            int errorCount = 0;
            for (Map map : list) {
                try {
                    String id_uuid = StringUtil.ObjectToString(map.get("id_uuid"));
                    String contract_number = StringUtil.ObjectToString(map.get("contract_number"));
                    String contract_code = StringUtil.ObjectToString(map.get("contract_code"));
                    String dealer_id = StringUtil.ObjectToString(map.get("dealer_id"));
                    String dealer_id_uuid = StringUtil.ObjectToString(map.get("dealer_id_uuid"));
                    String contract_startDate = StringUtil.ObjectToDateString(map.get("contract_startDate"));
                    String contract_endDate = StringUtil.ObjectToDateString(map.get("contract_endDate"));
                    String contract_type_id = StringUtil.ObjectToString(map.get("contract_type_id"));
                    String sap_contract_code = StringUtil.ObjectToString(map.get("sap_contract_code"));
                    String contract_status_code = StringUtil.ObjectToString(map.get("contract_status_code"));

                    String remark = StringUtil.ObjectToString(map.get("remark"));
                    int is_del = 1;
                    if (contract_status_code.equalsIgnoreCase("Y")) {
                        is_del = 0;
                    }
                    contract_status_code = "0";
                    String insertSql = "insert into oms_contract(id_uuid,contract_number,contract_code,dealer_id,dealer_id_uuid,contract_startDate,contract_endDate,contract_type_id,sap_contract_code,contract_status_code,remark,is_del)values(?,?,?,?,?,?,?,?,?,?,?,?)";
                    mysqlJdbcTemplate.update(insertSql, new Object[]{id_uuid, contract_number, contract_code, dealer_id, dealer_id_uuid, contract_startDate, contract_endDate, contract_type_id, sap_contract_code, contract_status_code, remark, is_del});
                    logger.info(">>>>" + map);
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
