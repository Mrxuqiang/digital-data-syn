/*
================================================================================
表结构代码:TB_PURAA
表结构名称:采配方式表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PURAA;
drop index AK_TB_PURAA;
drop table TB_PURAA;
create table TB_PURAA  (
   PURAA_ID             INTEGER                         not null,  /*采配方式ID          */
   PURAA001             INTEGER                         not null,  /*营运组织ID          */
   PURAA002             INTEGER                         not null,  /*营运组织公司ID      */
   PURAA003             INTEGER                         not null,  /*商品ID              */
   PURAA004             INTEGER                         not null,  /*默认供应商ID        */
   PURAA005             VARCHAR2(1),                               /*采配方式            */
   PURAA006             NUMBER(18,3),                              /*库存下限            */
   PURAA007             NUMBER(18,3),                              /*再补货点            */
   PURAA008             VARCHAR2(1),                               /*经营方式            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_PURAA primary key (PURAA_ID)
);
create unique index AK_TB_PURAA on TB_PURAA (PURAA001,PURAA003);
create sequence SEQ_TB_PURAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURAA to public;
grant index  on TB_PURAA to public;
grant update on TB_PURAA to public; 
grant delete on TB_PURAA to public;  
grant insert on TB_PURAA to public; 
grant select on SEQ_TB_PURAA to public;   