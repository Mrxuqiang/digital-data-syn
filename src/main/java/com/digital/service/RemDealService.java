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
 * Created by lenovo on 2016/6/20.
 */
@Component
public class RemDealService {

    private static Logger logger = LoggerFactory.getLogger(RemDealService.class);

    @Autowired
    private JdbcTemplate mysqlremJdbcTemplate;

    @Autowired
    private JdbcTemplate remOracleJdbcTemplate;

    public DataResult cleanDealer() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            int count = mysqlremJdbcTemplate.queryForObject("select count(1) from oms_dealer", Integer.class);
            dataResult.setTotalCount(count);
            mysqlremJdbcTemplate.update("truncate table oms_dealer");
            dataResult.setEndTime(System.currentTimeMillis());
            return dataResult;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public DataResult importDealer() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            //从REM读取数据
            String sql = "SELECT REMDEALERGUID id_uuid,DEALERCODE dealer_number,DEALERTYPE dealer_type,PERSONDEALERNAME person_dealer_name,PERSONDEALERTEL person_dealer_tel," +
                    "PERSONDEALERIDNUM person_dealer_idnum,PDCONTACTADD person_contact_add,COMPANYNAME company_name,PROVINCE province_id,CITY city_id,ADDRESS address," +
                    "POSTCODE post_code,ORGCRETIFICATIONNO org_cretification_no,LEGALREPTEL legal_rep_tel,LEGALREPIDNUM legal_repid_num,LEGALREPTEL tele_phone" +
                    " from "+ Constants.remDatabase+".MD_DEALER";
            logger.info(sql);
            List<Map<String, Object>> list = remOracleJdbcTemplate.queryForList(sql);
            int successCount = 0;
            int errorCount = 0;
            for (Map map : list) {
                try {
                    String ID_UUID = StringUtil.ObjectToString(map.get("ID_UUID"));
                    Integer DEAL_TYPE = Integer.valueOf(StringUtil.ObjectToString(map.get("dealer_type")));

                    String DEALER_NUMBER = StringUtil.ObjectToString(map.get("DEALER_NUMBER"));
                    String PERSON_DEALER_NAME = StringUtil.ObjectToString(map.get("PERSON_DEALER_NAME"));
                    String PERSON_DEALER_TEL = StringUtil.ObjectToString(map.get("PERSON_DEALER_TEL"));
                    String PERSON_DEALER_IDNUM = StringUtil.ObjectToString(map.get("PERSON_DEALER_IDNUM"));
                    String PERSON_CONTACT_ADD = StringUtil.ObjectToString(map.get("PERSON_CONTACT_ADD"));
                    String COMPANY_NAME = StringUtil.ObjectToString(map.get("COMPANY_NAME"));
                    Integer PROVINCE_ID = Integer.valueOf(StringUtil.ObjectToString(map.get("PROVINCE_ID")));
                    Integer CITY_ID = Integer.valueOf(StringUtil.ObjectToString(map.get("CITY_ID")));
                    String ADDRESS = StringUtil.ObjectToString(map.get("ADDRESS"));
                    String POST_CODE = StringUtil.ObjectToString(map.get("POST_CODE"));
                    String ORG_CRETIFICATION_NO = StringUtil.ObjectToString(map.get("ORG_CRETIFICATION_NO"));
                    String LEGAL_REP_TEL = StringUtil.ObjectToString(map.get("LEGAL_REP_TEL"));
                    String LEGAL_REPID_NUM = StringUtil.ObjectToString(map.get("LEGAL_REPID_NUM"));
                    String TELE_PHONE = StringUtil.ObjectToString(map.get("TELE_PHONE"));


                    Integer DEALER_TYPE = 0;//TODO 需要判断类型
                    if(DEAL_TYPE == 1) {
                        DEALER_TYPE = 1;
                    }
                    if(DEAL_TYPE == 2) {
                        DEALER_TYPE = 2;
                    }

                    String insertSql = "insert into oms_dealer(id_uuid,dealer_number,dealer_type,person_dealer_name,person_dealer_tel,person_dealer_idnum," +
                            "person_contact_add,company_name,address,post_code,legal_rep_tel,legal_repid_num,tele_phone,province_id,city_id,org_cretification_no" +
                            ")values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                    mysqlremJdbcTemplate.update(insertSql, new Object[]{ID_UUID, DEALER_NUMBER, DEALER_TYPE, PERSON_DEALER_NAME, PERSON_DEALER_TEL, PERSON_DEALER_IDNUM,
                            PERSON_CONTACT_ADD, COMPANY_NAME, ADDRESS, POST_CODE, LEGAL_REP_TEL, LEGAL_REPID_NUM, TELE_PHONE,PROVINCE_ID,CITY_ID,ORG_CRETIFICATION_NO
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
