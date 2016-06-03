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
public class ConBrandSeriesService {
    private static Logger logger = LoggerFactory.getLogger(OrgService.class);

    @Autowired
    JdbcTemplate mysqlJdbcTemplate;

    @Autowired
    JdbcTemplate omsOracleJdbcTemplate;

    @Autowired
    JdbcTemplate remOracleJdbcTemplate;

    public DataResult cleanConBrandSeries() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            int count = mysqlJdbcTemplate.queryForObject("select count(1) from oms_contract_brand_series", Integer.class);
            dataResult.setTotalCount(count);
            mysqlJdbcTemplate.update("truncate table oms_contract_brand_series");
            dataResult.setEndTime(System.currentTimeMillis());
            return dataResult;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public DataResult importConBrandSeries() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());

            //查找合同中主品牌主品牌系列
            String sql = "select '' contract_id,a.CONBE_ID contract_id_uuid,'' brand_id,a.conbe058 brand_id_uuid," +
                    "'' brand_series_id,a.conbe041 brand_series_id_uuid from " + Constants.database + ".TB_CONBE a";
            List<Map<String, Object>> list = omsOracleJdbcTemplate.queryForList(sql);
            int successCount = 0;
            int errorCount = 0;
            for (Map map : list) {
                try {
                    String contract_id = StringUtil.ObjectToString(map.get("contract_id"));
                    String contract_id_uuid = StringUtil.ObjectToString(map.get("contract_id_uuid"));
                    String brand_id = StringUtil.ObjectToString(map.get("brand_id"));
                    String brand_id_uuid = StringUtil.ObjectToString(map.get("brand_id_uuid"));
                    String brand_series_id = StringUtil.ObjectToString(map.get("brand_series_id"));
                    String brand_series_id_uuid = StringUtil.ObjectToString(map.get("brand_series_id_uuid"));
                    String insertSql = "insert into oms_contract_brand_series(contract_id,contract_id_uuid,brand_id,brand_id_uuid,brand_series_id,brand_series_id_uuid)values(?,?,?,?,?,?)";
                    mysqlJdbcTemplate.update(insertSql, new Object[]{contract_id, contract_id_uuid, brand_id, brand_id_uuid, brand_series_id, brand_series_id_uuid});
                    System.out.println(">>>>" + map);
                    successCount++;
                    logger.info(successCount + ">>" + map + "");
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
