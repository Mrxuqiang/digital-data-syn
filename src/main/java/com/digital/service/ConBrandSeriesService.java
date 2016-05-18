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
 * Created by lenovo on 2016/5/17.
 */
@Component
public class ConBrandSeriesService {
    private static Logger logger = LoggerFactory.getLogger(OrgService.class);

    @Autowired
    JdbcTemplate mysqlJdbcTemplate;

    @Autowired
    JdbcTemplate omsOracleJdbcTemplate;

    @Autowired
    JdbcTemplate remOracleJdbcTemplate;

    public DataResult cleanConBrandSeries() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            int count = mysqlJdbcTemplate.queryForObject("select count(1) from oms_contract_brand_series", Integer.class);
            dataResult.setTotalCount(count);
            mysqlJdbcTemplate.update("truncate table oms_contract_brand_series");
            dataResult.setEndTime(System.currentTimeMillis());
            return dataResult;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public DataResult importConBrandSeries() {
        try {
            DataResult dataResult = new DataResult();
            dataResult.setStartTime(System.currentTimeMillis());
            //从REM读取数据
            List<Map<String, Object>> list = omsOracleJdbcTemplate.queryForList("SELECT\n" +
                    "''contract_id,\n" +
                    "''contract_id_uuid,\n" +
                    "''brand_id,\n" +
                    "''brand_id_uuid,\n" +
                    "''brand_series_id,\n" +
                    "CONBS002 brand_series_id_uuid\n" +
                    "from TB_CONBS WHERE ROWNUM<100");
            int successCount = 0;
            int errorCount = 0;
            for (Map map : list) {
                try {
                    String contract_id = StringUtil.ObjectToString(map.get("contract_id"));
                    String contract_id_uuid = StringUtil.ObjectToString(map.get("contract_id_uuid"));
                    String brand_id = StringUtil.ObjectToString(map.get("brand_id"));
                    String brand_id_uuid = StringUtil.ObjectToString(map.get("brand_id_uuid"));
                    String brand_series_id = StringUtil.ObjectToString(map.get("brand_series_id"));
                    String brand_series_id_uuid = StringUtil.ObjectToString(map.get("brand_series_id_uuid"));
                    String insertSql = "insert into oms_contract_brand_series(contract_id,contract_id_uuid,brand_id,brand_id_uuid,brand_series_id,brand_series_id_uuid)values(?,?,?,?,?,?)";
                    mysqlJdbcTemplate.update(insertSql, new Object[]{contract_id,contract_id_uuid,brand_id,brand_id_uuid,brand_series_id,brand_series_id_uuid});
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

    /**
     * 修复合同代理的品牌系列表
     *
     * @return
     */
    public DataResult fixContractBrandSeries() {
        DataResult dataResult = new DataResult();
        dataResult.setStartTime(System.currentTimeMillis());
        int successCount = 0;
        {
            try {
                //修复合同代理品牌系列中的 brand_id
                String sql = "update oms_contract_brand_series obs set obs.brand_id=(select obi.id from oms_brand_info obi where obi.id_uuid=obs.brand_id_uuid limit 0,1)";
                successCount = mysqlJdbcTemplate.update(sql);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        {
            try {
                //修复合同代理品牌系列中的 contract_id
                String sql = "update oms_contract_brand_series obs set obs.contract_id=(select obi.id from oms_contract obi where obi.id_uuid=obs.contract_id_uuid limit 0,1)";
                successCount += mysqlJdbcTemplate.update(sql);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        {
            try {
                //修复合同代理品牌系列中的 brand_series_id
                String sql = "update oms_contract_brand_series obs set obs.brand_series_id=(select obi.id from oms_brand_series obi where obi.id_uuid=obs.brand_series_id_uuid limit 0,1)";
                successCount += mysqlJdbcTemplate.update(sql);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        dataResult.setErrorCount(0);
        dataResult.setSuccessCount(successCount);
        dataResult.setEndTime(System.currentTimeMillis());
        return dataResult;
    }


}
