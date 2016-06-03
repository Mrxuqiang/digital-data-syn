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
 * Created by CC on 16/5/17.
 */
@Component
public class BrandService {

    private static Logger logger = LoggerFactory.getLogger(BrandService.class);

    @Autowired
    JdbcTemplate mysqlJdbcTemplate;

    @Autowired
    JdbcTemplate omsOracleJdbcTemplate;

    @Autowired
    JdbcTemplate remOracleJdbcTemplate;

    /**
     * 清空品牌/品牌系列表数据
     *
     * @return
     */
    public DataResult cleanBrand() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            int count_info = mysqlJdbcTemplate.queryForObject("select count(1) from oms_brand_info", Integer.class);
            int count_series = mysqlJdbcTemplate.queryForObject("select count(1) from oms_brand_series", Integer.class);
            dataResult.setTotalCount(count_info + count_series);
            mysqlJdbcTemplate.update("truncate table oms_brand_info");
            mysqlJdbcTemplate.update("truncate table oms_brand_series");
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
    public DataResult importBrandInfo() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            //从REM读取数据
            String sql = "select PUBHB_ID id_uuid, '' company_id, PUBHB006 company_id_uuid, UUID brand_number, PUBHB002 brand_name  " +
                    " from " + Constants.database + ".tb_pubhb_brand ";
            logger.info(sql);
            List<Map<String, Object>> list = omsOracleJdbcTemplate.queryForList(sql);
            int successCount = 0;
            int errorCount = 0;
            for (Map map : list) {
                try {
                    String ID_UUID = StringUtil.ObjectToString(map.get("ID_UUID"));
                    String COMPANY_ID = StringUtil.ObjectToString(map.get("COMPANY_ID"));
                    String COMPANY_ID_UUID = StringUtil.ObjectToString(map.get("COMPANY_ID_UUID"));
                    String BRAND_NUMBER = StringUtil.ObjectToString(map.get("BRAND_NUMBER"));
                    String BRAND_NAME = StringUtil.ObjectToString(map.get("BRAND_NAME"));
                    String BRAND_PY = PinYinUtil.getFirstPinYin(BRAND_NAME);
                    String insertSql = "insert into oms_brand_info(id_uuid,company_id,company_id_uuid,brand_number,brand_name,brand_py" +
                            ")values(?,?,?,?,?,?)";
                    mysqlJdbcTemplate.update(insertSql, new Object[]{ID_UUID, COMPANY_ID, COMPANY_ID_UUID, BRAND_NUMBER, BRAND_NAME, BRAND_PY});
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
    public DataResult importBrandSeries() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            //从REM读取数据
            String sql = "select PUBHB_ID id_uuid,'' brand_id,PUBHB004 brand_id_uuid,UUID series_number,PUBHB002 series_name " +
                    " from " + Constants.database + ".TB_PUBHB";
            logger.info(sql);
            List<Map<String, Object>> list = omsOracleJdbcTemplate.queryForList(sql);
            int successCount = 0;
            int errorCount = 0;
            for (Map map : list) {
                try {
                    String ID_UUID = StringUtil.ObjectToString(map.get("ID_UUID"));
                    String BRAND_ID = StringUtil.ObjectToString(map.get("BRAND_ID"));
                    String BRAND_ID_UUID = StringUtil.ObjectToString(map.get("BRAND_ID_UUID"));
                    String SERIES_NUMBER = StringUtil.ObjectToString(map.get("SERIES_NUMBER"));
                    String SERIES_NAME = StringUtil.ObjectToString(map.get("SERIES_NAME"));

                    String insertSql = "insert into oms_brand_series(id_uuid,brand_id,brand_id_uuid,series_number,series_name" +
                            ")values(?,?,?,?,?)";
                    mysqlJdbcTemplate.update(insertSql, new Object[]{ID_UUID, BRAND_ID, BRAND_ID_UUID, SERIES_NUMBER, SERIES_NAME});
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

}
