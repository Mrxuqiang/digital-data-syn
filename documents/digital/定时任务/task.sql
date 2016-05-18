-- 更新 oms_shop_info
market_name,market_id,

company_id,dealer_id,brand_id,brand_name,series_id,series_name

SELECT a.id market_id,a.market_name from oms_market_info a RIGHT JOIN oms_shop_info b on a.id_uuid=b.market_id_uuid



UPDATE oms_shop_info set market_id=market_id,market_nae=market_name,company_id=company_id,
dealer_id=dealer_id,brand_id=brand_id,brand_name=brand_name,series_id=series_id,series_name=series_name

-- 更新 oms_brand_info
company_id
SELECT a.id from oms_company a RIGHT JOIN oms_brand_info b on a.id_uuid=b.company_id_uuid
UPDATE oms_brand_info SET company_id=id



-- 更新 oms_brand_series
brand_id
SELECT a.id from oms_brand_info a RIGHT JOIN oms_brand_series b on a.id_uuid=b.brand_id_uuid
UPDATE oms_brand_series SET brand_id=id



-- 更新 oms_company
province_id,city_id 需要从rem1.0里面读取

-- 更新oms_contract_shop
shop_id,contract_id
SELECT a.id shop_id from oms_shop_info a RIGHT JOIN oms_contract_shop b on a.id_uuid=b.shop_id_uuid
SELECT a.id contract_id from oms_contract a RIGHT JOIN oms_contract_shop b on a.id_uuid=b.contract_id_uuid
UPDATE oms_contract_shop set shop_id=shop_id,contract_id=contract_id



--更新oms_contract_brand_series
brand_id,contract_id,brand_series_id
SELECT a.id brand_id from oms_brand_info a RIGHT JOIN oms_contract_brand_series b on a.id_uuid=b.brand_id_uuid
SELECT a.id contract_id from oms_contract a RIGHT JOIN oms_contract_brand_series b on a.id_uuid=b.contract_id_uuid
SELECT a.id brand_series_id from oms_brand_series a RIGHT JOIN oms_contract_brand_series b on a.id_uuid=b.brand_series_id_uuid
UPDATE oms_contract_brand_series set brand_id=brand_id,contract_id=contract_id,brand_series_id=brand_series_id



--更新 oms_market_info
小区id second_org_id,大区名first_org_name,小区名second_org_name,lon,lat

--更新oms_dealer
dealer_type 判断经销商类型 province_id,city_id 需要从rem1.0里面读取 org_cretification_no没有找到

--更新 oms_contract
contract_number  dealer_id 导入我们这边的经销商id
SELECT a.id dealer_id from oms_dealer a RIGHT JOIN oms_contract b on a.id_uuid=b.dealer_id_uuid
UPDATE oms_contract set dealer_id=dealer_id