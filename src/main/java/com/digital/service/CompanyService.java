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
 * 工厂品牌公司
 * Created by CC on 16/5/17.
 */
@Component
public class CompanyService {

    private static Logger logger = LoggerFactory.getLogger(CompanyService.class);

    @Autowired
    JdbcTemplate mysqlJdbcTemplate;

    @Autowired
    JdbcTemplate omsOracleJdbcTemplate;

    @Autowired
    JdbcTemplate remOracleJdbcTemplate;


    public DataResult cleanCompany() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            int count = mysqlJdbcTemplate.queryForObject("select count(1) from oms_company", Integer.class);
            dataResult.setTotalCount(count);
            mysqlJdbcTemplate.update("truncate table oms_company");
            dataResult.setEndTime(System.currentTimeMillis());
            return dataResult;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    public DataResult importCompany() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            //从REM读取数据 TODO province_id city_id 未处理
            String sql = "select PUBHA_ID id_uuid,UUID company_number,PUBHA003 company_name,PUBHA005 company_address " +
                    ",PUBHA006 post_code,PUBHA008 corporation,PUBHA009 corporation_tel,PUBHA010 manager,PUBHA011 manager_tel,PUBHA012 contract,PUBHA013 contract_tel" +
                    ",PUBHA015 web_url from TB_PUBHA where rownum<2000";
            List<Map<String, Object>> list = omsOracleJdbcTemplate.queryForList(sql);
            logger.info(sql);

            int successCount = 0;
            int errorCount = 0;
            for (Map map : list) {
                try {
                    String ID_UUID = StringUtil.ObjectToString(map.get("ID_UUID"));
                    String COMPANY_NUMBER = StringUtil.ObjectToString(map.get("COMPANY_NUMBER"));
                    String COMPANY_NAME = StringUtil.ObjectToString(map.get("COMPANY_NAME"));
                    String COMPANY_ADDRESS = StringUtil.ObjectToString(map.get("COMPANY_ADDRESS"));
                    String POST_CODE = StringUtil.ObjectToString(map.get("POST_CODE"));
                    String CORPORATION = StringUtil.ObjectToString(map.get("CORPORATION"));
                    String CORPORATION_TEL = StringUtil.ObjectToString(map.get("CORPORATION_TEL"));
                    String MANAGER = StringUtil.ObjectToString(map.get("MANAGER"));
                    String MANAGER_TEL = StringUtil.ObjectToString(map.get("MANAGER_TEL"));
                    String CONTRACT = StringUtil.ObjectToString(map.get("CONTRACT"));
                    String CONTRACT_TEL = StringUtil.ObjectToString(map.get("CONTRACT_TEL"));
                    String WEB_URL = StringUtil.ObjectToString(map.get("WEB_URL"));
                    String insertSql = "insert into oms_company(id_uuid,company_number,company_name,company_address,post_code," +
                            "corporation,corporation_tel,manager,manager_tel,contract,contract_tel,web_url)values(?,?,?,?,?,?,?,?,?,?,?,?)";
                    mysqlJdbcTemplate.update(insertSql, new Object[]{
                            ID_UUID, COMPANY_NUMBER, COMPANY_NAME, COMPANY_ADDRESS, POST_CODE,
                            CORPORATION, CORPORATION_TEL, MANAGER, MANAGER_TEL, CONTRACT, CONTRACT_TEL, WEB_URL
                    });
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
