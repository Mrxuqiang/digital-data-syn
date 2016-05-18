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


    public DataResult cleanOrg() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            int count =mysqlJdbcTemplate.queryForObject("select count(1) from oms_org",Integer.class);
            dataResult.setTotalCount(count);
            mysqlJdbcTemplate.update("truncate table oms_org");
            dataResult.setEndTime(System.currentTimeMillis());
            return dataResult;
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
            List<Map<String, Object>> list = omsOracleJdbcTemplate.queryForList("SELECT PUBBJ_ID ,PUBBJ001 ,PUBBJ002 ,'1'org_level,'0'parent_id from TB_PUBBJ");
            int successCount = 0;
            int errorCount = 0;
            for (Map map : list) {
                try {
                    String id_uuid = StringUtil.ObjectToString(map.get("PUBBJ_ID"));
                    String org_code = StringUtil.ObjectToString(map.get("PUBBJ001"));
                    String org_name = StringUtil.ObjectToString(map.get("PUBBJ002"));
                    String org_level = StringUtil.ObjectToString(map.get("org_level"));
                    String parent_id = StringUtil.ObjectToString(map.get("parent_id"));
                    String insertSql = "insert into oms_org(id_uuid,org_code,org_name,org_level,parent_id)values(?,?,?,?,?)";
                    mysqlJdbcTemplate.update(insertSql, new Object[]{id_uuid, org_code, org_name, org_level,parent_id});
                    System.out.println(">>>>" + map);
                    successCount++;
                } catch (Exception e) {
                    errorCount++;
                    e.printStackTrace();
                }
            }
            List<Map<String, Object>> listTwo = omsOracleJdbcTemplate.queryForList("SELECT PUBBK_ID id_uuid,PUBBK001 org_code,PUBBK002 org_name,'2'org_level ,PUBBK003 from TB_PUBBK");
            for (Map map : listTwo) {
                try {
                    String id_uuid = StringUtil.ObjectToString(map.get("id_uuid"));
                    String org_code = StringUtil.ObjectToString(map.get("org_code"));
                    String org_name = StringUtil.ObjectToString(map.get("org_name"));
                    String org_level = StringUtil.ObjectToString(map.get("org_level"));
                    String parent_id_uuid = StringUtil.ObjectToString(map.get("PUBBK003"));
                    String parent_id=null;
                   Map<String,Object> Omsmap=mysqlJdbcTemplate.queryForMap("select * from oms_org where id_uuid=? and org_level=1 limit 0,1",new Object[]{parent_id_uuid});
                    if(Omsmap!=null){
                        parent_id=StringUtil.ObjectToString(Omsmap.get("id"));
                    }
                    String insertSql = "insert into oms_org(id_uuid,org_code,org_name,org_level,parent_id)values(?,?,?,?,?)";
                    mysqlJdbcTemplate.update(insertSql, new Object[]{id_uuid, org_code, org_name, org_level,parent_id});
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
//修复组织机构表中 parent_id
//public DataResult fixOrg() {
//    DataResult dataResult = new DataResult();
//    dataResult.setStartTime(System.currentTimeMillis());
//    int successCount = 0;
//    {
//        try {
//            //修复组织机构表中 parent_id
//            String sql = "update oms_org t1 inner join oms_org t2  on t2.id_uuid=t1.parent_id and t2.org_level=1 set t1.parent_id =t2.id";
//            successCount = mysqlJdbcTemplate.update(sql);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }
//    dataResult.setErrorCount(0);
//    dataResult.setSuccessCount(successCount);
//    dataResult.setEndTime(System.currentTimeMillis());
//    return dataResult;
//}



}
