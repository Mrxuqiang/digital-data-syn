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
public class RemConBrandSeriesService {

    private static Logger logger = LoggerFactory.getLogger(RemConBrandSeriesService.class);

    @Autowired
    private JdbcTemplate mysqlremJdbcTemplate;

    @Autowired
    private JdbcTemplate remOracleJdbcTemplate;

    public DataResult cleanConBrandSeries() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            int count = mysqlremJdbcTemplate.queryForObject("select count(1) from oms_contract_brand_series", Integer.class);
            dataResult.setTotalCount(count);
            mysqlremJdbcTemplate.update("truncate table oms_contract_brand_series");
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
            String sql = "select SAPCONTRACTCODE contract_id_uuid," + " BRANDSERIESID brand_series_id_uuid from " + Constants.remDatabase + ".C_BOOTHBRANDHISTORY";
            List<Map<String, Object>> list = remOracleJdbcTemplate.queryForList(sql);
            int successCount = 0;
            int errorCount = 0;
            for (Map map : list) {
                try {
                    String contract_id_uuid = StringUtil.ObjectToString(map.get("contract_id_uuid"));
                    String brand_series_id_uuid = StringUtil.ObjectToString(map.get("brand_series_id_uuid"));
                    String contractIdSql = "select id contract_id from oms_contract where id_uuid=?";
                    List<Map<String,Object>> contractidList= mysqlremJdbcTemplate.queryForList(contractIdSql,new Object[]{contract_id_uuid});
                    Integer contract_id = Integer.valueOf(StringUtil.ObjectToString(contractidList.get(0).get("contract_id")));

                    String brandSeriesIdSql = "select id brand_series_id from oms_brand_series where id_uuid=?";
                    List<Map<String,Object>> brandSeriesIdList= mysqlremJdbcTemplate.queryForList(brandSeriesIdSql,new Object[]{brand_series_id_uuid});
                    Integer brand_series_id = Integer.valueOf(StringUtil.ObjectToString(contractidList.get(0).get("brand_series_id")));

                    String insertSql = "insert into oms_contract_brand_series(contract_id,contract_id_uuid,brand_series_id,brand_series_id_uuid)values(?,?,?,?)";
                    mysqlremJdbcTemplate.update(insertSql, new Object[]{contract_id,contract_id_uuid,brand_series_id,brand_series_id_uuid});
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
