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
-- update oms_contract_shop osi set osi.contract_id=(select omi.id from oms_contract omi where omi.id_uuid=osi.contract_id_uuid limit 0,1);
update oms_contract_shop t1,oms_contract t2 set t1.contract_id=t2.id where t1.contract_id_uuid=t2.id_uuid;


update oms_shop_info osi set osi.market_id=(select omi.id from oms_market_info omi where omi.id_uuid=osi.market_id_uuid limit 0,1);
update oms_shop_info osi set osi.market_name=(select omi.market_name from oms_market_info omi where omi.id_uuid=osi.market_id_uuid limit 0,1);

-- 冗余字段 shop
-- company_id
update oms_shop_info shop set  shop.company_id=(
select  * from (
select company_id from oms_brand_info a where a.id in (
	select b.brand_id from oms_contract_brand_series b where b.contract_id=(
	select c.contract_id from oms_contract_shop c where c.shop_id=1768 and c.contract_id is not null limit 0,1
	)
	)
) tmp limit 0,1
);
-- dealer_id
update oms_shop_info shop set  shop.dealer_id=(
select b.dealer_id from oms_contract b where b.id=(
	select c.contract_id from oms_contract_shop c where c.shop_id=shop.id and c.contract_id is not null limit 0,1
));

-- brand_id,brand_name

update oms_shop_info t1,oms_contract_brand_series t2,oms_contract_shop t3 set t1.brand_id=t2.brand_id where t2.contract_id=t3.contract_id and t1.id=t3.shop_id and t3.contract_id is not null;

-- update oms_shop_info shop set shop.brand_id=(
-- 	select b.brand_id from oms_contract_brand_series b where b.contract_id=(
-- 	select c.contract_id from oms_contract_shop c where c.shop_id=shop.id and c.contract_id is not null limit 0,1
-- ) limit 0,1);

update oms_shop_info t1,oms_brand_info t2,oms_contract_brand_series t3,oms_contract_shop t4
set t1.brand_name=t2.brand_name
where t2.id=t3.brand_id
and t3.contract_id=t4.contract_id
and t4.shop_id=t1.id
and t4.contract_id is not null;

-- series_id,series_name
update oms_shop_info t1,oms_contract_brand_series t2,oms_contract_shop t3
set t1.series_id=t2.brand_series_id
where t2.contract_id=t3.contract_id
and t3.shop_id=t1.id
and t3.contract_id is not null;

update oms_shop_info shop set shop.series_name=(
  select a.series_name from oms_brand_series a where a.id=shop.series_id
);