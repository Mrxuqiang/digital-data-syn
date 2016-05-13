/*
================================================================================
表结构代码:TB_CCMDJ
表结构名称:券领退单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMDJ;
drop index AK_TB_CCMDJ;
drop table TB_CCMDJ;
create table TB_CCMDJ  (
   CCMDJ_ID             INTEGER                         not null,  /*券领退单ID          */
   CCMDJ001             INTEGER                         not null,  /*单别ID              */
   CCMDJ002             VARCHAR2(30)                    not null,  /*领退单号            */
   CCMDJ003             DATE                            not null,  /*单据日期            */
   CCMDJ004             DATE                            not null,  /*领退日期            */
   CCMDJ005             INTEGER                         not null,  /*领退营运组织ID      */
   CCMDJ006             INTEGER                         not null,  /*领退部门ID          */
   CCMDJ007             INTEGER                         not null,  /*领退人员ID          */
   CCMDJ008             INTEGER                         not null,  /*接收营运组织ID      */
   CCMDJ009             INTEGER                         not null,  /*接收部门ID          */
   CCMDJ010             INTEGER                         not null,  /*接收人员ID          */
   CCMDJ011             VARCHAR2(255),                             /*备注                */
   CCMDJ012             INTEGER,                                   /*录入人ID            */
   CCMDJ013             DATE,                                      /*录入日期            */
   CCMDJ014             INTEGER,                                   /*审核人ID            */
   CCMDJ015             DATE,                                      /*审核日期            */
   CCMDJ016             VARCHAR2(1)                     not null,  /*审核状态            */
   CCMDJ017             VARCHAR2(1),                               /*是否签核            */
   CCMDJ018             VARCHAR2(30),                              /*签核单号            */
   CCMDJ019             VARCHAR2(1),                               /*签核码              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMDJ primary key (CCMDJ_ID)
);
create unique index AK_TB_CCMDJ on TB_CCMDJ (CCMDJ002,CCMDJ005);
create sequence SEQ_TB_CCMDJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDJ to public;
grant index  on TB_CCMDJ to public;
grant update on TB_CCMDJ to public; 
grant delete on TB_CCMDJ to public;  
grant insert on TB_CCMDJ to public; 
grant select on SEQ_TB_CCMDJ to public;   