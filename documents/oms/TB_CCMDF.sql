/*
================================================================================
表结构代码:TB_CCMDF
表结构名称:券入库主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMDF;
drop index AK_TB_CCMDF;
drop table TB_CCMDF;
create table TB_CCMDF  (
   CCMDF_ID             INTEGER                         not null,  /*券入库单ID          */
   CCMDF001             INTEGER                         not null,  /*单别ID              */
   CCMDF002             VARCHAR2(30)                    not null,  /*入库单号            */
   CCMDF003             DATE                            not null,  /*单据日期            */
   CCMDF004             INTEGER                         not null,  /*营运组织ID          */
   CCMDF005             INTEGER                         not null,  /*业务部门ID          */
   CCMDF006             INTEGER                         not null,  /*业务人员ID          */
   CCMDF007             DATE                            not null,  /*入库日期            */
   CCMDF008             VARCHAR2(255),                             /*备注                */
   CCMDF009             INTEGER,                                   /*录入人ID            */
   CCMDF010             DATE,                                      /*录入日期            */
   CCMDF011             INTEGER,                                   /*审核人ID            */
   CCMDF012             DATE,                                      /*审核日期            */
   CCMDF013             VARCHAR2(1)                     not null,  /*审核状态            */
   CCMDF014             VARCHAR2(1),                               /*是否签核            */
   CCMDF015             VARCHAR2(30),                              /*签核单号            */
   CCMDF016             VARCHAR2(1),                               /*签核码              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMDF primary key (CCMDF_ID)
);
create unique index AK_TB_CCMDF on TB_CCMDF (CCMDF002,CCMDF004);
create sequence SEQ_TB_CCMDF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDF to public;
grant index  on TB_CCMDF to public;
grant update on TB_CCMDF to public; 
grant delete on TB_CCMDF to public;  
grant insert on TB_CCMDF to public; 
grant select on SEQ_TB_CCMDF to public;   