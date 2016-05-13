/*
================================================================================
表结构代码:TB_TAXAH
表结构名称:补税单表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_TAXAH;
drop index AK_TB_TAXAH;
drop table TB_TAXAH;
create table TB_TAXAH  (
   TAXAH_ID             INTEGER                         not null,  /*补税单ID          */
   TAXAH001             INTEGER                         not null,  /*单别ID            */
   TAXAH002             VARCHAR2(30)                    not null,  /*补税单号          */
   TAXAH003             DATE                            not null,  /*单据日期          */
   TAXAH004             INTEGER                         not null,  /*公司ID            */
   TAXAH005             INTEGER                         not null,  /*营运组织ID        */
   TAXAH006             DATE                            not null,  /*统计截止日期      */
   TAXAH007             INTEGER                         not null,  /*补税费用码        */
   TAXAH008             INTEGER                         not null,  /*业务部门ID        */
   TAXAH009             INTEGER                         not null,  /*业务人员ID        */
   TAXAH010             VARCHAR2(255),                             /*备注              */
   TAXAH011             INTEGER,                                   /*录入人ID          */
   TAXAH012             DATE,                                      /*录入日期          */
   TAXAH013             INTEGER,                                   /*审核人ID          */
   TAXAH014             DATE,                                      /*审核日期          */
   TAXAH015             VARCHAR2(1)                     not null,  /*审核状态          */
   TAXAH016             VARCHAR2(1),                               /*是否签核          */
   TAXAH017             VARCHAR2(30),                              /*签核单号          */
   TAXAH018             VARCHAR2(1),                               /*签核码            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_TAXAH primary key (TAXAH_ID)
);
create unique index AK_TB_TAXAH on TB_TAXAH (TAXAH002,TAXAH005);
create sequence SEQ_TB_TAXAH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_TAXAH to public;
grant index  on TB_TAXAH to public;
grant update on TB_TAXAH to public; 
grant delete on TB_TAXAH to public;  
grant insert on TB_TAXAH to public; 
grant select on SEQ_TB_TAXAH to public;   