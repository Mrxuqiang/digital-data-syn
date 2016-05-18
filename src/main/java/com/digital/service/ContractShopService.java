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
public class ContractShopService {
    private static Logger logger = LoggerFactory.getLogger(OrgService.class);

    @Autowired
    JdbcTemplate mysqlJdbcTemplate;

    @Autowired
    JdbcTemplate omsOracleJdbcTemplate;

    @Autowired
    JdbcTemplate remOracleJdbcTemplate;

    public DataResult cleanContractShop() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            int count = mysqlJdbcTemplate.queryForObject("select count(1) from oms_contract_shop", Integer.class);
            dataResult.setTotalCount(count);
            mysqlJdbcTemplate.update("truncate table oms_contract_shop");
            dataResult.setEndTime(System.currentTimeMillis());
            return dataResult;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public DataResult importContractShop() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            //从REM读取数据
            List<Map<String, Object>> list = omsOracleJdbcTemplate.queryForList("SELECT \n" +
                    "''shop_id,\n" +
                    "CONBF003 shop_id_uuid,\n" +
                    "''contract_id,\n" +
                    "CONBF001 contract_id_uuid\n" +
                    "FROM TB_CONBF");
            int successCount = 0;
            int errorCount = 0;
            for (Map map : list) {
                try {
                    String shop_id = StringUtil.ObjectToString(map.get("shop_id"));
                    String shop_id_uuid = StringUtil.ObjectToString(map.get("shop_id_uuid"));
                    String contract_id = StringUtil.ObjectToString(map.get("contract_id"));
                    String contract_id_uuid = StringUtil.ObjectToString(map.get("contract_id_uuid"));
                    String insertSql = "insert into oms_contract_shop(shop_id,shop_id_uuid,contract_id,contract_id_uuid)values(?,?,?,?)";
                    mysqlJdbcTemplate.update(insertSql, new Object[]{shop_id,shop_id_uuid,contract_id,contract_id_uuid});
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
    public DataResult fixContractShop() {
        DataResult dataResult = new DataResult();
        dataResult.setStartTime(System.currentTimeMillis());
        int successCount = 0;
        {
            try {
                //修复合同店铺表中的 shop_id
                String sql = "update oms_contract_shop osi set osi.shop_id=(select omi.id from oms_shop_info omi where omi.id_uuid=osi.shop_id_uuid limit 0,1)";
                successCount = mysqlJdbcTemplate.update(sql);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        {
            try {
                //修复合同店铺表中的 contract_id
                String sql = "update oms_contract_shop osi set osi.contract_id=(select omi.id from oms_contract omi where omi.id_uuid=osi.contract_id_uuid limit 0,1)";
                successCount += mysqlJdbcTemplate.update(sql);
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
