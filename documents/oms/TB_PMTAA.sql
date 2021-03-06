/*
================================================================================
表结构代码:TB_PMTAA
表结构名称:促销主题表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTAA;
drop index AK_TB_PMTAA;
drop table TB_PMTAA;
create table TB_PMTAA  (
   PMTAA_ID             INTEGER                         not null,  /*促销主题ID        */
   PMTAA001             VARCHAR2(8)                     not null,  /*促销主题代码      */
   PMTAA002             VARCHAR2(30)                    not null,  /*促销主题名称      */
   PMTAA003             VARCHAR2(64),                              /*促销主题描述      */
   PMTAA004             INTEGER                         not null,  /*营运组织          */
   PMTAA005             INTEGER,                                   /*录入人            */
   PMTAA006             DATE,                                      /*录入日期          */
   PMTAA007             INTEGER,                                   /*审核人            */
   PMTAA008             DATE,                                      /*审核日期          */
   PMTAA009             VARCHAR2(1)                      not null, /*审核状态          */ 
   PMTAA010             DATE,                                      /*起始日期          */
   PMTAA011             DATE,                                      /*结束日期          */
   PMTAA012             VARCHAR2(1),
   PMTAA013             INTEGER,
   PMTAA014             VARCHAR2(255),
   PMTAA015             VARCHAR2(1),
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTAA primary key (PMTAA_ID)
);
create unique index AK_TB_PMTAA on TB_PMTAA (PMTAA001);
create sequence SEQ_TB_PMTAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTAA to public;
grant index  on TB_PMTAA to public;
grant update on TB_PMTAA to public; 
grant delete on TB_PMTAA to public;  
grant insert on TB_PMTAA to public; 
grant select on SEQ_TB_PMTAA to public;   