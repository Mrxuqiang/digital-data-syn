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
 * Created by Mr.xu on 2016/6/20
 * 用途:品牌表及品牌系列表
 */
@Component
public class RemBrandService {

    private static Logger logger = LoggerFactory.getLogger(RemBrandService.class);

    @Autowired
    JdbcTemplate mysqlremJdbcTemplate;

    @Autowired
    JdbcTemplate remOracleJdbcTemplate;

    /**
     * 清空品牌/品牌系列表数据
     *
     * @return
     */
    public DataResult cleanBrandRem() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            int count_info = mysqlremJdbcTemplate.queryForObject("select count(*) from oms_brand_info", Integer.class);
            int count_series = mysqlremJdbcTemplate.queryForObject("select count(*) from oms_brand_series", Integer.class);
            dataResult.setTotalCount(count_info + count_series);
            mysqlremJdbcTemplate.update("truncate table oms_brand_info");
            mysqlremJdbcTemplate.update("truncate table oms_brand_series");
            dataResult.setEndTime(System.currentTimeMillis());
            return dataResult;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 导入品牌Info
     *
     * @return
     */
    public DataResult importBrandInfoRem() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            //从REM读取数据 TODO company_id_uuid   没有关联关系
            String sql = "SELECT BRANDID,REMBRANDGUID,BRANDCODE,BRANDNAME,PINYINSPELL FROM MD_BRAND";
            logger.info(sql);
            List<Map<String, Object>> list = remOracleJdbcTemplate.queryForList(sql);
            int successCount = 0;
            int errorCount = 0;
            for (Map map : list) {
                try {
                    String ID_UUID = StringUtil.ObjectToString(map.get("BRANDID"));
                    String COMPANY_ID = null;
                    String COMPANY_ID_UUID =null;
                    String BRAND_NUMBER = StringUtil.ObjectToString(map.get("BRANDCODE"));
                    String BRAND_NAME = StringUtil.ObjectToString(map.get("BRANDNAME"));
                    String BRAND_PY = StringUtil.ObjectToString(map.get("PINYINSPELL"));
                    //查找对应的company_id
//                    Map<String, Object> marketMap = mysqlremJdbcTemplate.queryForMap("select id,market_name from oms_market_info WHERE id_uuid=? and is_del=0", new Object[]{market_id_uuid});
//                    if (null != marketMap) {
//                        COMPANY_ID = StringUtil.ObjectToString(marketMap.get("COMPANY_ID"));
//                    }
                    String insertSql = "insert into oms_brand_info(id_uuid,company_id,company_id_uuid,brand_number,brand_name,brand_py" +
                            ")values(?,?,?,?,?,?)";
                    mysqlremJdbcTemplate.update(insertSql, new Object[]{ID_UUID, COMPANY_ID, COMPANY_ID_UUID, BRAND_NUMBER, BRAND_NAME, BRAND_PY});
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

    /**
     * 导入品牌InfoSeries
     *
     * @return
     */
    public DataResult importBrandSeriesRem() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            //从REM读取数据
            String sql = "SELECT REMBRANDSERIESGUID,BRANDID,SERIESCODE,SERIESNAME FROM MD_BRANDSERIES";
            logger.info(sql);
            List<Map<String, Object>> list = remOracleJdbcTemplate.queryForList(sql);
            int successCount = 0;
            int errorCount = 0;
            String BRAND_ID="0";
            for (Map map : list) {
                try {
                    String ID_UUID = StringUtil.ObjectToString(map.get("REMBRANDSERIESGUID"));
                    String BRAND_ID_UUID = StringUtil.ObjectToString(map.get("BRANDID"));
                    String SERIES_NUMBER = StringUtil.ObjectToString(map.get("SERIESCODE"));
                    String SERIES_NAME = StringUtil.ObjectToString(map.get("SERIESNAME"));
                    //查找对应的brand_id
                    Map<String, Object> brandSeriesMap = mysqlremJdbcTemplate.queryForMap("select id from oms_brand_info WHERE id_uuid=? and is_del=0", new Object[]{BRAND_ID_UUID});
                    if (null != brandSeriesMap) {
                        BRAND_ID = StringUtil.ObjectToString(brandSeriesMap.get("id"));
                    }

                    String insertSql = "insert into oms_brand_series(id_uuid,brand_id,brand_id_uuid,series_number,series_name" +
                            ")values(?,?,?,?,?)";
                    mysqlremJdbcTemplate.update(insertSql, new Object[]{ID_UUID, BRAND_ID, BRAND_ID_UUID, SERIES_NUMBER, SERIES_NAME});
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
