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
 * Created by CC on 16/5/17.
 */
@Component
public class OrgService {

    private static Logger logger = LoggerFactory.getLogger(OrgService.class);

    @Autowired
    JdbcTemplate mysqlJdbcTemplate;

    @Autowired
    JdbcTemplate omsOracleJdbcTemplate;

    @Autowired
    JdbcTemplate remOracleJdbcTemplate;


    public String cleanOrg() {
        try {
            mysqlJdbcTemplate.update("truncate table oms_org");
            System.out.println(">>end>>");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    public DataResult importOrg() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            //从REM读取数据
            List<Map<String, Object>> list = remOracleJdbcTemplate.queryForList("select * from MD_ORG");
            int successCount = 0;
            int errorCount = 0;
            for (Map map : list) {
                try {
                    String id_uuid = StringUtil.ObjectToString(map.get("ORGID"));
                    String org_code = StringUtil.ObjectToString(map.get("ORGCODE"));
                    String org_name = StringUtil.ObjectToString(map.get("ORGNAME"));
                    String org_level = StringUtil.ObjectToString(map.get("ORGLEVEL"));
                    String parent_id = StringUtil.ObjectToString(map.get("PARENTID"));
                    String order_num = StringUtil.ObjectToString(map.get("ORDERNUM"));
                    String start_time = StringUtil.ObjectToDateString(map.get("STARTTIME"));
                    String end_time = StringUtil.ObjectToDateString(map.get("ENDTIME"));
                    String enable = StringUtil.ObjectToString(map.get("ENABLE"));
                    String create_by = StringUtil.ObjectToString(map.get("CREATEBY"));
                    String insertSql = "insert into oms_org(id_uuid,org_code,org_name,org_level,parent_id,order_num,start_time,end_time,enable" +
                            ",create_by)values(?,?,?,?,?,?,?,?,?,?)";
                    mysqlJdbcTemplate.update(insertSql, new Object[]{id_uuid, org_code, org_name, org_level, parent_id, order_num, start_time, end_time, enable, create_by});
                    System.out.println(">>>>" + map);
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
