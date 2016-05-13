/*
================================================================================
表结构代码:TB_PRCAD
表结构名称:价格策略组表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_PRCAD;
drop index AK_TB_PRCAD;
drop table TB_PRCAD;
create table TB_PRCAD  (
   PRCAD_ID             INTEGER                         not null,  /*价格策略组ID        */
   PRCAD001             VARCHAR2(16)                    not null,  /*策略组代码          */
   PRCAD002             VARCHAR2(60)                    not null,  /*策略组名称          */
   PRCAD003             INTEGER                         not null,  /*制定营运组织        */
   PRCAD004             INTEGER,                                   /*录入人ID            */
   PRCAD005             DATE,                                      /*录入日期            */
   PRCAD006             INTEGER,                                   /*审核人ID            */
   PRCAD007             DATE,                                      /*审核日期            */
   PRCAD008             VARCHAR2(1)                      not null, /*审核状态            */ 
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER,                                    /*资料状态            */
   constraint PK_TB_PRCAD primary key (PRCAD_ID)
);
create unique index AK_TB_PRCAD on TB_PRCAD (PRCAD001,FLAG);
create sequence SEQ_TB_PRCAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCAD to public;
grant index  on TB_PRCAD to public;
grant update on TB_PRCAD to public; 
grant delete on TB_PRCAD to public;  
grant insert on TB_PRCAD to public; 
grant select on SEQ_TB_PRCAD to public;   