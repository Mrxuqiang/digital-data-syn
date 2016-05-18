package com.digital.service;

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
            //从REM读取数据 TODO contract_number 未处理
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
                    "'' contract_status_code,\n" +
                    "CONBE023 remark\n" +
                    "from TB_CONBE where CONBE025='Y' AND rownum <100");
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
                    String insertSql = "insert into oms_contract(id_uuid,contract_number,contract_code,dealer_id,dealer_id_uuid,contract_startDate,contract_endDate,contract_type_id,sap_contract_code,contract_status_code,remark)values(?,?,?,?,?,?,?,?,?,?,?)";
                    mysqlJdbcTemplate.update(insertSql, new Object[]{id_uuid,contract_number,contract_code,dealer_id,dealer_id_uuid,contract_startDate,contract_endDate,contract_type_id,sap_contract_code,contract_status_code,remark});
                    System.out.println(">>>>" + map);
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


    //定时更新数据
    public DataResult fixContract() {
        DataResult dataResult = new DataResult();
        dataResult.setStartTime(System.currentTimeMillis());
        int successCount = 0;
        {
            try {
                //修复展位店铺表中的 market_id
                String sql = "update oms_contract osi set osi.dealer_id=(select omi.id from oms_dealer omi where omi.id_uuid=osi.dealer_id_uuid limit 0,1)";
                successCount = mysqlJdbcTemplate.update(sql);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        dataResult.setErrorCount(0);
        dataResult.setSuccessCount(successCount);
        dataResult.setEndTime(System.currentTimeMillis());
        return dataResult;
    }
}
