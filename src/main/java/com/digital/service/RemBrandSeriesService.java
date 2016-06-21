package com.digital.service;

import com.digital.common.Constants;
import com.digital.common.DataResult;
import com.digital.util.PinYinUtil;
import com.digital.util.StringUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

/**
 * Created by lenovo on 2016/6/21.
 */
@Component
public class RemBrandSeriesService {
    private static Logger logger = LoggerFactory.getLogger(RemBrandSeriesService.class);

    @Autowired
    private JdbcTemplate mysqlremJdbcTemplate;

    @Autowired
    private JdbcTemplate remOracleJdbcTemplate;

    public DataResult cleanBrandSeries() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
//            int count_info = mysqlremJdbcTemplate.queryForObject("select count(1) from oms_brand_info", Integer.class);
            int count_series = mysqlremJdbcTemplate.queryForObject("select count(1) from oms_brand_series", Integer.class);

            dataResult.setTotalCount( count_series);
//            mysqlremJdbcTemplate.update("truncate table oms_brand_info");
            mysqlremJdbcTemplate.update("truncate table oms_brand_series");
            dataResult.setEndTime(System.currentTimeMillis());
            return dataResult;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public DataResult importBrandSeries() {

        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            //从REM读取数据
            String sql = "SELECT  REMBRANDSERIESGUID id_uuid,BRANDID brand_id_uuid,SERIESCOD series_number,SERIESNAME series_name " +
                    "FROM " + Constants.remDatabase + ".MD_BRANDSERIES ";

            logger.info(sql);
            List<Map<String, Object>> list = remOracleJdbcTemplate.queryForList(sql);
            int successCount = 0;
            int errorCount = 0;
            for (Map map : list) {
                try {
                    Integer  ID_UUID = Integer.valueOf(StringUtil.ObjectToString(map.get("ID_UUID")));
                            Integer BRAND_ID_UUID = Integer.valueOf(StringUtil.ObjectToString(map.get("BRAND_ID_UUID")));
                    String SERIES_NUMBER = StringUtil.ObjectToString(map.get("SERIES_NUMBER"));
                    String SERIES_NAME = StringUtil.ObjectToString(map.get("SERIES_NAME"));
                    String insertSql = "insert into oms_brand_series(id_uuid,brand_id_uuid,series_number,series_name" +
                            ")values(?,?,?,?)";
                    mysqlremJdbcTemplate.update(insertSql, new Object[]{ID_UUID, BRAND_ID_UUID, SERIES_NUMBER, SERIES_NAME});
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
