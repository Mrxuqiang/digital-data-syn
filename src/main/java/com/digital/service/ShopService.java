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
public class ShopService {

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
            int count = mysqlJdbcTemplate.queryForObject("select count(1) from oms_shop_info", Integer.class);
            dataResult.setTotalCount(count);
            mysqlJdbcTemplate.update("truncate table oms_shop_info");
            dataResult.setEndTime(System.currentTimeMillis());
            return dataResult;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public DataResult importShop() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            //从REM读取数据
            List<Map<String, Object>> list = omsOracleJdbcTemplate.queryForList("select PUBIG_ID id_uuid,PUBIG_ID shop_number,PUBIG002 market_id_uuid,'' market_id,'' market_name,PUBIG003 booth_code,'' shop_level,'' oms_shop_infocol, '' really_area,'' vector_area,'' share_ratio,'' budgetary_price,'' doorplate_remarks,PUBIG004 booth_desc,'' company_id FROM TB_PUBIG where rownum < 100 ");
            int successCount = 0;
            int errorCount = 0;
            for (Map map : list) {
                try {
                    String id_uuid = StringUtil.ObjectToString(map.get("id_uuid"));
                    String shop_number = StringUtil.ObjectToString(map.get("shop_number"));
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
                    String company_id = StringUtil.ObjectToString(map.get("company_id"));
                    //TODO company_id,dealer_id,brand_id,brand_name,series_id,series_name 冗余字段需要根据合同进行更新
                    String insertSql = "insert into oms_shop_info(id_uuid,shop_number,market_id_uuid,market_id,market_name,booth_code,shop_level,oms_shop_infocol,really_area,vector_area,share_ratio,budgetary_price,doorplate_remarks,booth_desc,company_id)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                    mysqlJdbcTemplate.update(insertSql, new Object[]{id_uuid, shop_number, market_id_uuid, market_id, market_name, booth_code, shop_level, oms_shop_infocol, really_area, vector_area, share_ratio, budgetary_price, doorplate_remarks, booth_desc, company_id});
                    logger.info(map + "");
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

    //修复数据
    public DataResult fixShop() {
        DataResult dataResult = new DataResult();
        dataResult.setStartTime(System.currentTimeMillis());
        int successCount = 0;
        {
            try {
                //修复展位店铺表中的 market_id
                String sql = "update oms_shop_info osi set osi.market_id=(select omi.id from oms_market_info omi where omi.id_uuid=osi.market_id_uuid limit 0,1);";
                successCount = mysqlJdbcTemplate.update(sql);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        {
            try {
                //修复展位店铺表中的 market_name
                String sql = "update oms_shop_info osi set osi.market_name=(select omi.market_name from oms_market_info omi where omi.id_uuid=osi.market_id_uuid limit 0,1);";
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
