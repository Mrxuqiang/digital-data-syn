/*
================================================================================
表结构代码:TB_CCMBC
表结构名称:白卡领用单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMBC;
drop index AK_TB_CCMBC;
drop table TB_CCMBC;
create table TB_CCMBC  (
   CCMBC_ID             INTEGER                         not null,  /*白卡领用单ID        */
   CCMBC001             INTEGER                         not null,  /*单别ID              */
   CCMBC002             VARCHAR2(30)                    not null,  /*领用单号            */
   CCMBC003             DATE                            not null,  /*单据日期            */
   CCMBC004             DATE                            not null,  /*领用日期            */
   CCMBC005             INTEGER                         not null,  /*领用营运组织ID      */
   CCMBC006             INTEGER                         not null,  /*领用部门ID          */
   CCMBC007             INTEGER                         not null,  /*领用人员ID          */
   CCMBC008             INTEGER                         not null,  /*出库营运组织ID      */
   CCMBC009             INTEGER                         not null,  /*出库部门ID          */
   CCMBC010             INTEGER                         not null,  /*出库人员ID          */
   CCMBC011             VARCHAR2(255),                             /*备注                */
   CCMBC012             INTEGER,                                   /*录入人ID            */
   CCMBC013             DATE,                                      /*录入日期            */
   CCMBC014             INTEGER,                                   /*审核人ID            */
   CCMBC015             DATE,                                      /*审核日期            */
   CCMBC016             VARCHAR2(1)                     not null,  /*审核状态            */
   CCMBC017             VARCHAR2(1),                               /*是否签核            */
   CCMBC018             VARCHAR2(30),                              /*签核单号            */
   CCMBC019             VARCHAR2(1),                               /*签核码              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMBC primary key (CCMBC_ID)
);
create unique index AK_TB_CCMBC on TB_CCMBC (CCMBC002);
create sequence SEQ_TB_CCMBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMBC to public;
grant index  on TB_CCMBC to public;
grant update on TB_CCMBC to public; 
grant delete on TB_CCMBC to public;  
grant insert on TB_CCMBC to public; 
grant select on SEQ_TB_CCMBC to public;   