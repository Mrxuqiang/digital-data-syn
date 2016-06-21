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
 * 用途:摊位
 */
@Component
public class RemBoothService {

    private static Logger logger = LoggerFactory.getLogger(RemBoothService.class);

    @Autowired
    JdbcTemplate mysqlremJdbcTemplate;

    @Autowired
    JdbcTemplate remOracleJdbcTemplate;

    public DataResult cleanRem() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            int count = mysqlremJdbcTemplate.queryForObject("select count(*) from oms_booth_info", Integer.class);
            dataResult.setTotalCount(count);
            mysqlremJdbcTemplate.update("truncate table oms_booth_info");
            dataResult.setEndTime(System.currentTimeMillis());
            return dataResult;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public DataResult importBoothRem() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            //从rem读数据 TODO oms_shop_infocol booth_number  没有
            String sql = "SELECT BOOTHID,MALLID,BOOTHCODE,NEWESTBOOTHLEVEL,NEWESTREALLYAREA,NEWESTVECTORAREA,NEWESTSHARERATIO,NEWESTBUDGETARYPRICE,DOORPLATEREMARKS,BOOTHDESC from C_BOOTH";
            List<Map<String, Object>> list = remOracleJdbcTemplate.queryForList(sql);
            int successCount = 0;
            int errorCount = 0;
            String market_id="0";
            String market_name=null;
            for (Map map : list) {
                try {
                    String id_uuid = StringUtil.ObjectToString(map.get("BOOTHID"));
                    String booth_number =null;
                    String market_id_uuid = StringUtil.ObjectToString(map.get("MALLID"));
                    String booth_code = StringUtil.ObjectToString(map.get("BOOTHCODE"));
                    String shop_level = StringUtil.ObjectToString(map.get("NEWESTBOOTHLEVEL"));
                    String oms_shop_infocol = null;
                    String really_area = StringUtil.ObjectToString(map.get("NEWESTREALLYAREA"));
                    String vector_area = StringUtil.ObjectToString(map.get("NEWESTVECTORAREA"));
                    String share_ratio = StringUtil.ObjectToString(map.get("NEWESTSHARERATIO"));
                    String budgetary_price = StringUtil.ObjectToString(map.get("NEWESTBUDGETARYPRICE"));
                    String doorplate_remarks = StringUtil.ObjectToString(map.get("DOORPLATEREMARKS"));
                    String booth_desc = StringUtil.ObjectToString(map.get("BOOTHDESC"));
                    //查找对应的商场id和商场name
                    Map<String, Object> marketMap = mysqlremJdbcTemplate.queryForMap("select id,market_name from oms_market_info WHERE id_uuid=? and is_del=0", new Object[]{market_id_uuid});
                    if (null != marketMap) {
                        market_id = StringUtil.ObjectToString(marketMap.get("id"));
                        market_name = StringUtil.ObjectToString(marketMap.get("market_name"));
                    }
                    //导入数据
                    String insertSql = "insert into oms_booth_info(id_uuid,booth_number,market_id_uuid,market_id,market_name,booth_code,shop_level,oms_shop_infocol,really_area,vector_area,share_ratio,budgetary_price,doorplate_remarks,booth_desc)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                    mysqlremJdbcTemplate.update(insertSql, new Object[]{id_uuid, booth_number, market_id_uuid, market_id, market_name, booth_code, shop_level, oms_shop_infocol, really_area, vector_area, share_ratio, budgetary_price, doorplate_remarks, booth_desc});
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
