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
 * Created by CC on 16/5/17.
 */
@Component
public class DealerService {

    private static Logger logger = LoggerFactory.getLogger(DealerService.class);

    @Autowired
    JdbcTemplate mysqlJdbcTemplate;

    @Autowired
    JdbcTemplate omsOracleJdbcTemplate;

    @Autowired
    JdbcTemplate remOracleJdbcTemplate;

    /**
     * 清空经销商表数据
     *
     * @return
     */
    public DataResult cleanDealer() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            int count = mysqlJdbcTemplate.queryForObject("select count(1) from oms_dealer", Integer.class);
            dataResult.setTotalCount(count);
            mysqlJdbcTemplate.update("truncate table oms_dealer");
            dataResult.setEndTime(System.currentTimeMillis());
            return dataResult;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 导入经销商
     *
     * @return
     */
    public DataResult importDealer() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            //从REM读取数据
            String sql = "SELECT PUBGO_ID id_uuid,PUBGO001 dealer_number,PUBGO004 person_dealer_name,PUBGO017 person_dealer_tel,PUBGO022 person_dealer_idnum," +
                    "PUBGO031 person_contact_add,PUBGO004 company_name,PUBGO029 address,PUBGO030 post_code,PUBGO013 legal_rep_tel,PUBGO012 legal_repid_num," +
                    "PUBGO013 tele_phone from "+ Constants.database+".TB_PUBGO ";
            logger.info(sql);
            List<Map<String, Object>> list = omsOracleJdbcTemplate.queryForList(sql);
            int successCount = 0;
            int errorCount = 0;
            for (Map map : list) {
                try {
                    String ID_UUID = StringUtil.ObjectToString(map.get("ID_UUID"));
                    String DEALER_NUMBER = StringUtil.ObjectToString(map.get("DEALER_NUMBER"));
                    String PERSON_DEALER_NAME = StringUtil.ObjectToString(map.get("PERSON_DEALER_NAME"));
                    String PERSON_DEALER_TEL = StringUtil.ObjectToString(map.get("PERSON_DEALER_TEL"));
                    String PERSON_DEALER_IDNUM = StringUtil.ObjectToString(map.get("PERSON_DEALER_IDNUM"));
                    String PERSON_CONTACT_ADD = StringUtil.ObjectToString(map.get("PERSON_CONTACT_ADD"));
                    String COMPANY_NAME = StringUtil.ObjectToString(map.get("COMPANY_NAME"));
                    String ADDRESS = StringUtil.ObjectToString(map.get("ADDRESS"));
                    String POST_CODE = StringUtil.ObjectToString(map.get("POST_CODE"));
                    String LEGAL_REP_TEL = StringUtil.ObjectToString(map.get("LEGAL_REP_TEL"));
                    String LEGAL_REPID_NUM = StringUtil.ObjectToString(map.get("LEGAL_REPID_NUM"));
                    String TELE_PHONE = StringUtil.ObjectToString(map.get("TELE_PHONE"));

                    Integer DEALER_TYPE = 0;//TODO 需要判断类型
                    String insertSql = "insert into oms_dealer(id_uuid,dealer_number,dealer_type,person_dealer_name,person_dealer_tel,person_dealer_idnum," +
                            "person_contact_add,company_name,address,post_code,legal_rep_tel,legal_repid_num,tele_phone" +
                            ")values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
                    mysqlJdbcTemplate.update(insertSql, new Object[]{ID_UUID, DEALER_NUMBER, DEALER_TYPE, PERSON_DEALER_NAME, PERSON_DEALER_TEL, PERSON_DEALER_IDNUM,
                            PERSON_CONTACT_ADD, COMPANY_NAME, ADDRESS, POST_CODE, LEGAL_REP_TEL, LEGAL_REPID_NUM, TELE_PHONE
                    });
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
