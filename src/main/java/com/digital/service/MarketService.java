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
public class MarketService {
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
            int count = mysqlJdbcTemplate.queryForObject("select count(1) from oms_market_info", Integer.class);
            dataResult.setTotalCount(count);
            mysqlJdbcTemplate.update("truncate table oms_market_info");
            dataResult.setEndTime(System.currentTimeMillis());
            return dataResult;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public DataResult importMarket() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            //从REM读取数据 TODO province_id city_id 需要修复
            List<Map<String, Object>> list = omsOracleJdbcTemplate.queryForList("SELECT PUBCB_ID id_uuid,PUBCB001 market_number,PUBCB003 market_name," +
                    "PUBCB038 first_org_id,PUBCB039 second_org_id,''first_org_name,''second_org_name," +
                    "PUBCB013 province_id,PUBCB014 city_id,PUBCB015 district_id,PUBCB017 market_address,''lon,''lat " +
                    " from TB_PUBCB ");
            int successCount = 0;
            int errorCount = 0;
            for (Map map : list) {
                try {
                    String id_uuid = StringUtil.ObjectToString(map.get("id_uuid"));
                    String market_number = StringUtil.ObjectToString(map.get("market_number"));
                    String market_name = StringUtil.ObjectToString(map.get("market_name"));
                    String first_org_id = StringUtil.ObjectToString(map.get("first_org_id"));
                    String second_org_id = StringUtil.ObjectToString(map.get("second_org_id"));
                    String first_org_name = StringUtil.ObjectToString(map.get("first_org_name"));
                    String second_org_name = StringUtil.ObjectToString(map.get("second_org_name"));
//                    String province_id = StringUtil.ObjectToString(map.get("province_id"));
//                    String city_id = StringUtil.ObjectToString(map.get("city_id"));
                    String province_id = null;
                    String city_id = null;
                    String district_id = StringUtil.ObjectToString(map.get("district_id"));
                    String market_address = StringUtil.ObjectToString(map.get("market_address"));
                    String lon = StringUtil.ObjectToString(map.get("lon"));
                    String lat = StringUtil.ObjectToString(map.get("lat"));
                    try {

                        //处理大区小区ID
                        //查找所对应的大区
                        Map<String, Object> firstMap = mysqlJdbcTemplate.queryForMap("select * from oms_org where id_uuid=? and org_level=1 limit 0,1", new Object[]{first_org_id});
                        if (null != firstMap) {
                            first_org_id = StringUtil.ObjectToString(firstMap.get("id"));
                            first_org_name = StringUtil.ObjectToString(firstMap.get("org_name"));
                        }
                        //查找所对应的小区
                        Map<String, Object> secondMap = mysqlJdbcTemplate.queryForMap("select * from oms_org where id_uuid=? and org_level=2 limit 0,1", new Object[]{second_org_id});
                        if (null != firstMap) {
                            second_org_id = StringUtil.ObjectToString(secondMap.get("id"));
                            second_org_name = StringUtil.ObjectToString(secondMap.get("org_name"));
                        }
                    } catch (Exception e) {
                        first_org_id=null;
                        second_org_id=null;
                    }
                    String insertSql = "insert into oms_market_info(id_uuid,market_number,market_name,first_org_id,second_org_id,first_org_name,second_org_name,province_id,city_id,district_id,market_address,lon,lat)values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
                    mysqlJdbcTemplate.update(insertSql, new Object[]{id_uuid, market_number, market_name, first_org_id, second_org_id, first_org_name, second_org_name, province_id, city_id, district_id, market_address, lon, lat});
                    successCount++;
                    logger.info(successCount+">>"+map + "");
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
