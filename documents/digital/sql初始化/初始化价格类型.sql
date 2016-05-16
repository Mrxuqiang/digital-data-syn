-- 初始化价格类型
delete from system_code where code_type ='price_tpye';
insert into system_code(code_type,code_type_name,code_value_code,code_value_name,order_num) values('price_tpye','价格类型','1','明码实价',1);
insert into system_code(code_type,code_type_name,code_value_code,code_value_name,order_num) values('price_tpye','价格类型','2','明码议价',2);