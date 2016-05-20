alter table oms_company add index idx_id_uuid  (id_uuid);
alter table oms_brand_info add index idx_company_id_uuid  (company_id_uuid);
alter table oms_brand_series add index idx_brand_id_uuid  (brand_id_uuid);
alter table oms_brand_series add index idx_brand_series_id_uuid  (id_uuid);
alter table oms_brand_info add index idx_id_uuid  (id_uuid);
alter table oms_contract_brand_series add index idx_brand_id_uuid  (brand_id_uuid);
alter table oms_contract_brand_series add index idx_contract_id_uuid  (contract_id_uuid);
alter table oms_contract_brand_series add index idx_brand_series_id_uuid  (brand_series_id_uuid);
alter table oms_contract add index idx_dealer_id_uuid  (dealer_id_uuid);
alter table oms_dealer add index idx_id_uuid  (id_uuid);
alter table oms_shop_info add index idx_id_uuid (id_uuid);
alter table oms_contract_shop add index idx_shop_id_uuid  (shop_id_uuid);
alter table oms_shop_info add index idx_market_id_uuid  (market_id_uuid);
alter table oms_market_info add index idx_id_uuid  (id_uuid);

-- 修复数据
update oms_brand_info obi set obi.company_id =(select oc.id from oms_company oc where oc.id_uuid=obi.company_id_uuid limit 0,1);
update oms_brand_series obs set obs.brand_id=(select obi.id from oms_brand_info obi where obi.id_uuid=obs.brand_id_uuid limit 0,1);

update oms_contract_brand_series ocbs set ocbs.brand_id=(select obi.id from oms_brand_info obi where obi.id_uuid=ocbs.brand_id_uuid limit 0,1),
ocbs.contract_id=(select obi.id from oms_contract obi where obi.id_uuid=ocbs.contract_id_uuid limit 0,1),
ocbs.brand_series_id=(select obs.id from oms_brand_series obs where obs.id_uuid=ocbs.contract_id_uuid limit 0,1);

update oms_contract_brand_series obs set obs.contract_id=(select obi.id from oms_contract obi where obi.id_uuid=obs.contract_id_uuid limit 0,1);
update oms_contract_brand_series ocbs set ocbs.brand_series_id=(select obs.id from oms_brand_series obs where obs.id_uuid=ocbs.contract_id_uuid limit 0,1);

update oms_contract osi set osi.dealer_id=(select omi.id from oms_dealer omi where omi.id_uuid=osi.dealer_id_uuid limit 0,1);
update oms_contract_shop osi set osi.shop_id=(select omi.id from oms_shop_info omi where omi.id_uuid=osi.shop_id_uuid limit 0,1);
update oms_contract_shop osi set osi.contract_id=(select omi.id from oms_contract omi where omi.id_uuid=osi.contract_id_uuid limit 0,1);

update oms_shop_info osi set osi.market_id=(select omi.id from oms_market_info omi where omi.id_uuid=osi.market_id_uuid limit 0,1);
update oms_shop_info osi set osi.market_name=(select omi.market_name from oms_market_info omi where omi.id_uuid=osi.market_id_uuid limit 0,1);