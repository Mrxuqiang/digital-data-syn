/*
================================================================================
表结构代码:TB_CCMDH
表结构名称:券领用单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMDH;
drop index AK_TB_CCMDH;
drop table TB_CCMDH;
create table TB_CCMDH  (
   CCMDH_ID             INTEGER                         not null,  /*券领用单ID          */
   CCMDH001             INTEGER                         not null,  /*单别ID              */
   CCMDH002             VARCHAR2(30)                    not null,  /*领用单号            */
   CCMDH003             DATE                            not null,  /*单据日期            */
   CCMDH004             DATE                            not null,  /*领用日期            */
   CCMDH005             INTEGER                         not null,  /*领用营运组织ID      */
   CCMDH006             INTEGER                         not null,  /*领用部门ID          */
   CCMDH007             INTEGER                         not null,  /*领用人员ID          */
   CCMDH008             INTEGER                         not null,  /*出库营运组织ID      */
   CCMDH009             INTEGER                         not null,  /*出库部门ID          */
   CCMDH010             INTEGER                         not null,  /*出库人员ID          */
   CCMDH011             VARCHAR2(255),                             /*备注                */
   CCMDH012             INTEGER,                                   /*录入人ID            */
   CCMDH013             DATE,                                      /*录入日期            */
   CCMDH014             INTEGER,                                   /*审核人ID            */
   CCMDH015             DATE,                                      /*审核日期            */
   CCMDH016             VARCHAR2(1)                     not null,  /*审核状态            */
   CCMDH017             VARCHAR2(1),                               /*是否签核            */
   CCMDH018             VARCHAR2(30),                              /*签核单号            */
   CCMDH019             VARCHAR2(1),                               /*签核码              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMDH primary key (CCMDH_ID)
);
create unique index AK_TB_CCMDH on TB_CCMDH (CCMDH002,CCMDH005);
create sequence SEQ_TB_CCMDH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDH to public;
grant index  on TB_CCMDH to public;
grant update on TB_CCMDH to public; 
grant delete on TB_CCMDH to public;  
grant insert on TB_CCMDH to public; 
grant select on SEQ_TB_CCMDH to public;   