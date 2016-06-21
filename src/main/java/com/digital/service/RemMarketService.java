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
 * Created by Mr.xu on 2016/6/20
 * 用途:商场
 */
@Component
public class RemMarketService {
    private static Logger logger = LoggerFactory.getLogger(RemMarketService.class);
    @Autowired
    JdbcTemplate mysqlremJdbcTemplate;

    @Autowired
    JdbcTemplate remOracleJdbcTemplate;


    public DataResult cleanRem() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            int count = mysqlremJdbcTemplate.queryForObject("select count(*) from oms_market_info", Integer.class);
            dataResult.setTotalCount(count);
            mysqlremJdbcTemplate.update("truncate table oms_market_info");
            dataResult.setEndTime(System.currentTimeMillis());
            return dataResult;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    public DataResult importMarketRem() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            //从rem读数据 TODO PROVKey CITYNAME 数据为空
            String sql = "SELECT MALL.MALLID,MALL.MALLCODE,MALL.MALLNAME,MALL.ORGLEVE2ID,MALL.ORGLEVE3ID,MALL.PROVINCE,POV.PROVKey,MALL.CITY,mc.CITYNAME,MALL.DISTRICT,MALL.ADDRESS,MALL.LONGITUDE,MALL.LATITUDE,\n" +
                    "(SELECT ORG.ORGNAME FROM MD_ORG ORG WHERE MALL.ORGLEVE2ID=ORG.ORGID) first_org_name,\n" +
                    "(SELECT ORG.ORGNAME FROM MD_ORG ORG WHERE MALL.ORGLEVE3ID=ORG.ORGID) second_org_name\n" +
                    "FROM MD_MALL MALL \n" +
                    "LEFT JOIN MD_LO2PROV POV ON MALL.PROVINCE=POV.LOORGID \n" +
                    "LEFT JOIN MD_CITY mc on MALL.CITY=mc.CITYID";
            List<Map<String, Object>> list = remOracleJdbcTemplate.queryForList(sql);
            int successCount = 0;
            int errorCount = 0;
            for (Map map : list) {
                try {
                    String id_uuid = StringUtil.ObjectToString(map.get("MALLID"));
                    String market_number = StringUtil.ObjectToString(map.get("MALLCODE"));
                    String market_name = StringUtil.ObjectToString(map.get("MALLNAME"));
                    String first_org_id = StringUtil.ObjectToString(map.get("ORGLEVE2ID"));
                    String second_org_id = StringUtil.ObjectToString(map.get("ORGLEVE3ID"));
                    String first_org_name = StringUtil.ObjectToString(map.get("first_org_name"));
                    String second_org_name = StringUtil.ObjectToString(map.get("second_org_name"));
                    String province_id=StringUtil.ObjectToString(map.get("PROVINCE"));
                    String province_name = StringUtil.ObjectToString(map.get("PROVKey"));
                    String city_id=StringUtil.ObjectToString(map.get("CITY"));
                    String city_name = StringUtil.ObjectToString(map.get("CITYNAME"));
                    String district_id = StringUtil.ObjectToString(map.get("DISTRICT"));
                    String market_address = StringUtil.ObjectToString(map.get("ADDRESS"));
                    String lon = StringUtil.ObjectToString(map.get("LONGITUDE"));
                    String lat = StringUtil.ObjectToString(map.get("LATITUDE"));
                    String insertSql = "insert into oms_market_info(id_uuid,market_number,market_name,first_org_id,second_org_id,first_org_name,second_org_name,province_id,province_name,city_id,city_name,district_id,market_address,lon,lat)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                    mysqlremJdbcTemplate.update(insertSql, new Object[]{id_uuid, market_number, market_name, first_org_id, second_org_id, first_org_name, second_org_name,province_id ,province_name,city_id,city_name,district_id, market_address, lon, lat});
                    logger.info(successCount+">>"+map + "");
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
