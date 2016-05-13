/*
================================================================================
表结构代码:TB_CONAH
表结构名称:合同展帐单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONAH;
drop index AK_TB_CONAH;
drop table TB_CONAH;
create table TB_CONAH  (
   CONAH_ID             INTEGER                         not null,  /*展帐单ID            */
   CONAH001             INTEGER                         not null,  /*单别ID              */
   CONAH002             VARCHAR2(30)                    not null,  /*展帐单号            */
   CONAH003             DATE                            not null,  /*单据日期            */
   CONAH004             VARCHAR2(60)                    not null,  /*展帐描述            */
   CONAH005             VARCHAR2(255),                             /*备注                */
   CONAH006             INTEGER,                                   /*录入人ID            */
   CONAH007             DATE,                                      /*录入日期            */
   CONAH008             INTEGER,                                   /*审核人ID            */
   CONAH009             DATE,                                      /*审核日期            */
   CONAH010             VARCHAR2(1)                     not null,  /*审核状态            */
   CONAH011             VARCHAR2(1),                               /*是否签核            */
   CONAH012             VARCHAR2(30),                              /*签核单号            */
   CONAH013             VARCHAR2(1),                               /*签核码              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONAH primary key (CONAH_ID)
);
create unique index AK_TB_CONAH on TB_CONAH (CONAH002);
create sequence SEQ_TB_CONAH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONAH to public;
grant index  on TB_CONAH to public;
grant update on TB_CONAH to public; 
grant delete on TB_CONAH to public;  
grant insert on TB_CONAH to public; 
grant select on SEQ_TB_CONAH to public;   