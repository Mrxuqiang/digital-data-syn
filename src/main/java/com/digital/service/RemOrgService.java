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
 * 用途:大小区域
 */
@Component
public class RemOrgService {

    private static Logger logger = LoggerFactory.getLogger(RemOrgService.class);

    @Autowired
    JdbcTemplate mysqlremJdbcTemplate;

    @Autowired
    JdbcTemplate remOracleJdbcTemplate;


    public DataResult cleanOrgRem() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            int count = mysqlremJdbcTemplate.queryForObject("select count(*) from oms_org", Integer.class);
            dataResult.setTotalCount(count);
            mysqlremJdbcTemplate.update("truncate table oms_org");
            dataResult.setEndTime(System.currentTimeMillis());
            return dataResult;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    public DataResult importOrgRem() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            //从REM读取数据 TODO org_level parent_id  没有
            List<Map<String, Object>> list = remOracleJdbcTemplate.queryForList("SELECT ORGID,ORGCODE,ORGNAME,ORDERNUM,STARTTIME,ENDTIME,ENABLE from MD_ORG");
            int successCount = 0;
            int errorCount = 0;
            for (Map map : list) {
                try {
                    String id_uuid = StringUtil.ObjectToString(map.get("ORGID"));
                    String org_code = StringUtil.ObjectToString(map.get("ORGCODE"));
                    String org_name = StringUtil.ObjectToString(map.get("ORGNAME"));
                    String org_level =null;
                    String parent_id =null;
                    String order_num=StringUtil.ObjectToString(map.get("ORDERNUM"));
                    String start_time=StringUtil.ObjectToString(map.get("STARTTIME"));
                    String end_time=StringUtil.ObjectToString(map.get("ENDTIME"));
                    String enable=StringUtil.ObjectToString(map.get("ENABLE"));
                    String insertSql = "insert into oms_org(id_uuid,org_code,org_name,org_level,parent_id,order_num,start_time,end_time,enable)values(?,?,?,?,?,?.?.?.?)";
                    mysqlremJdbcTemplate.update(insertSql, new Object[]{id_uuid, org_code, org_name, org_level, parent_id,order_num,start_time,end_time,enable});
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
