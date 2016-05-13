/*
================================================================================
表结构代码:TB_BILLB
表结构名称:设计师对账明细表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_BILLB;
drop index AK_TB_BILLB;
drop table TB_BILLB;
create table TB_BILLB  (
   BILLB_ID             INTEGER                         not null,     /*设计师对账明细ID  */        
   BILLB001             INTEGER                         not null,     /*设计师对账单ID    */        
   BILLB002             VARCHAR2(1)                     not null,     /*单据类型          */        
   BILLB003             INTEGER                         not null,     /*来源单号ID        */        
   BILLB004             VARCHAR2(30)                    not null,     /*来源单号          */        
   BILLB005             INTEGER                         not null,     /*签收ID            */ 
   BILLB006             NUMBER(12,2)                    not null,     /*销售金额          */                
   CREATE_USER          VARCHAR2(12),                                 /*建立人员          */
   USER_GROUP           VARCHAR2(12),                                 /*建立人员部门      */                               
   CREATE_DATE          DATE,                                         /*建立日期          */
   MODIFIER             VARCHAR2(12),                                 /*修改人员          */
   MODI_DATE            DATE,                                         /*修改日期          */
   FLAG                 NUMBER,                                       /*资料状态          */
   constraint PK_TB_BILLB primary key (BILLB_ID)
);
create unique index AK_TB_BILLB on TB_BILLB (BILLB002,BILLB003,BILLB005,FLAG);
create sequence SEQ_TB_BILLB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILLB to public;
grant index  on TB_BILLB to public;
grant update on TB_BILLB to public; 
grant delete on TB_BILLB to public;  
grant insert on TB_BILLB to public; 
grant select on SEQ_TB_BILLB to public;   