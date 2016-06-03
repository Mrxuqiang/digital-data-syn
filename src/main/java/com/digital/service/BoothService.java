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
public class BoothService {

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
            int count = mysqlJdbcTemplate.queryForObject("select count(1) from oms_booth_info", Integer.class);
            dataResult.setTotalCount(count);
            mysqlJdbcTemplate.update("truncate table oms_booth_info");
            dataResult.setEndTime(System.currentTimeMillis());
            return dataResult;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public DataResult importBooth() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            List<Map<String, Object>> list = omsOracleJdbcTemplate.queryForList("select PUBIF_ID id_uuid,PUBIF005 shop_number,PUBIF002 market_id_uuid,'' market_id,'' market_name,PUBIF005 booth_code,'' shop_level,'' oms_shop_infocol, '' really_area,'' vector_area, '' share_ratio,'' budgetary_price,'' doorplate_remarks,PUBIF006 booth_desc " +
                    " from " + Constants.database + ".TB_PUBIF ");
            int successCount = 0;
            int errorCount = 0;
            for (Map map : list) {
                try {
                    String id_uuid = StringUtil.ObjectToString(map.get("id_uuid"));
                    String booth_number = StringUtil.ObjectToString(map.get("shop_number"));
                    String market_id_uuid = StringUtil.ObjectToString(map.get("market_id_uuid"));
                    String market_id = StringUtil.ObjectToString(map.get("market_id"));
                    String market_name = StringUtil.ObjectToString(map.get("market_name"));
                    String booth_code = StringUtil.ObjectToString(map.get("booth_code"));
                    String shop_level = StringUtil.ObjectToString(map.get("shop_level"));
                    String oms_shop_infocol = StringUtil.ObjectToString(map.get("oms_shop_infocol"));
                    String really_area = StringUtil.ObjectToString(map.get("really_area"));
                    String vector_area = StringUtil.ObjectToString(map.get("vector_area"));
                    String share_ratio = StringUtil.ObjectToString(map.get("share_ratio"));
                    String budgetary_price = StringUtil.ObjectToString(map.get("budgetary_price"));
                    String doorplate_remarks = StringUtil.ObjectToString(map.get("doorplate_remarks"));
                    String booth_desc = StringUtil.ObjectToString(map.get("booth_desc"));
                    String insertSql = "insert into oms_booth_info(id_uuid,booth_number,market_id_uuid,market_id,market_name,booth_code,shop_level,oms_shop_infocol,really_area,vector_area,share_ratio,budgetary_price,doorplate_remarks,booth_desc)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                    mysqlJdbcTemplate.update(insertSql, new Object[]{id_uuid, booth_number, market_id_uuid, market_id, market_name, booth_code, shop_level, oms_shop_infocol, really_area, vector_area, share_ratio, budgetary_price, doorplate_remarks, booth_desc});
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
