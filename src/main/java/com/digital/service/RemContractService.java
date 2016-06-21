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
public class RemContractService {
    private static Logger logger = LoggerFactory.getLogger(RemContractService.class);

    @Autowired
    private JdbcTemplate mysqlremJdbcTemplate;

    @Autowired
    private JdbcTemplate remOracleJdbcTemplate;

    public DataResult cleanContract() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            int count = mysqlremJdbcTemplate.queryForObject("select count(1) from oms_contract", Integer.class);
            dataResult.setTotalCount(count);
            mysqlremJdbcTemplate.update("truncate table oms_contract");
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
            List<Map<String, Object>> list = remOracleJdbcTemplate.queryForList("SELECT " +
                    "CONTRACTID id_uuid," +
                    "CONTRACTCODE contract_code," +
                    "dealer_id_uuid," +
                    "CONTRACTSTARTDATE contract_startDate," +
                    "CONTRACTENDDATE contract_endDate," +
                    "CONTRACTACTUALENDDATE contract_actual_endDate," +
                    "CONTRACTTYPEID contract_type_id," +
                    "SAPCONTRACTCODE sap_contract_code," +
                    "CONTRACTSTATUSCODE  contract_status_code," +
                    "REMARK remark" +
                    "from " + Constants.remDatabase + ".CON_MAIN");
            int successCount = 0;
            int errorCount = 0;
            for (Map map : list) {
                try {
                    String id_uuid = StringUtil.ObjectToString(map.get("id_uuid"));
                    String contract_code = StringUtil.ObjectToString(map.get("contract_code"));
                    String dealer_id = StringUtil.ObjectToString(map.get("dealer_id"));
                    String dealer_id_uuid = StringUtil.ObjectToString(map.get("dealer_id_uuid"));
                    String contract_startDate = StringUtil.ObjectToDateString(map.get("contract_startDate"));
                    String contract_endDate = StringUtil.ObjectToDateString(map.get("contract_endDate"));
                    String contract_actual_endDate = StringUtil.ObjectToString(map.get("contract_actual_endDate"));
                    Integer contract_type_id = Integer.valueOf(StringUtil.ObjectToString(map.get("contract_type_id")));
                    String sap_contract_code = StringUtil.ObjectToString(map.get("sap_contract_code"));
                    Integer contract_status_code = Integer.valueOf(StringUtil.ObjectToString(map.get("contract_status_code")));
                    String remark = StringUtil.ObjectToString(map.get("remark"));
                    if(contract_actual_endDate != null && !contract_actual_endDate.equals("")) {
                        contract_endDate = contract_actual_endDate;
                    }
                    int is_del = 0;

                    String insertSql = "insert into oms_contract(id_uuid,contract_code,dealer_id,dealer_id_uuid,contract_startDate,contract_endDate,contract_type_id," +
                            "sap_contract_code,contract_status_code,remark,is_del)" +
                            "values(?,?,?,?,?,?,?,?,?,?,?)";
                    mysqlremJdbcTemplate.update(insertSql, new Object[]{id_uuid, contract_code, dealer_id, dealer_id_uuid, contract_startDate, contract_endDate, contract_type_id,
                            sap_contract_code, contract_status_code, remark, is_del});
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
