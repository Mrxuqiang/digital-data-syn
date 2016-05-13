/*
================================================================================
表结构代码:TB_SUPAR
表结构名称:战盟协议单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPAR;
drop index AK_TB_SUPAR;
drop table TB_SUPAR;
create table TB_SUPAR  (
   SUPAR_ID             INTEGER                         not null,  /*战盟协议单ID        */
   SUPAR001             INTEGER                         not null,  /*单别                */
   SUPAR002             VARCHAR2(30)                    not null,  /*单据编号            */
   SUPAR003             DATE                            not null,  /*单据日期            */
   SUPAR004             INTEGER                         not null,  /*厂家ID              */
   SUPAR005             DATE                            not null,  /*签订日期            */
   SUPAR006             VARCHAR2(1000)                   not null, /*协议内容            */
   SUPAR007             VARCHAR2(255),                             /*备注                */
   SUPAR008             INTEGER,                                   /*录入人ID            */
   SUPAR009             DATE,                                      /*录入日期            */
   SUPAR010             INTEGER,                                   /*审核人ID            */
   SUPAR011             DATE,                                      /*审核日期            */
   SUPAR012             VARCHAR2(1)                     not null,  /*审核状态            */
   SUPAR013             VARCHAR2(1),                               /*是否签核            */
   SUPAR014             VARCHAR2(30),                              /*签核单号            */
   SUPAR015             VARCHAR2(1),                               /*签核码              */
   SUPAR016             DATE,                                      /*终止日期            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SUPAR primary key (SUPAR_ID)
);
create unique index AK_TB_SUPAR on TB_SUPAR (SUPAR002);
create sequence SEQ_TB_SUPAR minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAR to public;
grant index  on TB_SUPAR to public;
grant update on TB_SUPAR to public; 
grant delete on TB_SUPAR to public;  
grant insert on TB_SUPAR to public; 
grant select on SEQ_TB_SUPAR to public;   