/*
================================================================================
表结构代码:TB_PRCAA
表结构名称:价格策略主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PRCAA;
drop index AK_TB_PRCAA;
drop table TB_PRCAA;
create table TB_PRCAA  (
   PRCAA_ID             INTEGER                         not null,  /*价格策略ID          */
   PRCAA001             VARCHAR2(16)                    not null,  /*策略代码            */
   PRCAA002             VARCHAR2(60)                    not null,  /*策略名称            */
   PRCAA003             DATE,                                      /*制定日期            */
   PRCAA004             INTEGER                         not null,  /*制定营运组织        */
   PRCAA005             INTEGER,                                   /*制定部门            */
   PRCAA006             INTEGER,                                   /*制定人员            */
   PRCAA007             VARCHAR2(255),                             /*备注                */
   PRCAA008             VARCHAR2(1)                     not null,  /*状态                */
   PRCAA009             VARCHAR2(1),                               /*是否签核            */
   PRCAA010             VARCHAR2(30),                              /*签核单号            */
   PRCAA011             VARCHAR2(1),                               /*签核码              */
   PRCAA012             INTEGER,                                   /*录入人ID            */
   PRCAA013             DATE,                                      /*录入日期            */
   PRCAA014             INTEGER,                                   /*审核人ID            */
   PRCAA015             DATE,                                      /*审核日期            */
   PRCAA016             VARCHAR2(200),                             /*备用字段            */
   PRCAA017             VARCHAR2(200),                             /*备用字段            */
   PRCAA018             VARCHAR2(200),                             /*备用字段            */
   PRCAA019             VARCHAR2(200),                             /*备用字段            */
   PRCAA020             INTEGER,                                   /*商品策略            */ 
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_PRCAA primary key (PRCAA_ID)
);
create unique index AK_TB_PRCAA on TB_PRCAA (PRCAA001);
create sequence SEQ_TB_PRCAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCAA to public;
grant index  on TB_PRCAA to public;
grant update on TB_PRCAA to public; 
grant delete on TB_PRCAA to public;  
grant insert on TB_PRCAA to public; 
grant select on SEQ_TB_PRCAA to public;   