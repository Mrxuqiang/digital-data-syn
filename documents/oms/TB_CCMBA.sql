/*
================================================================================
表结构代码:TB_CCMBA
表结构名称:白卡入库主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMBA;
drop index AK_TB_CCMBA;
drop table TB_CCMBA;
create table TB_CCMBA  (
   CCMBA_ID             INTEGER                         not null,  /*白卡入库单ID        */
   CCMBA001             INTEGER                         not null,  /*单别ID              */
   CCMBA002             VARCHAR2(30)                    not null,  /*入库单号            */
   CCMBA003             DATE                            not null,  /*单据日期            */
   CCMBA004             INTEGER                         not null,  /*营运组织ID          */
   CCMBA005             INTEGER                         not null,  /*业务部门ID          */
   CCMBA006             INTEGER                         not null,  /*业务人员ID          */
   CCMBA007             DATE                            not null,  /*入库日期            */
   CCMBA008             VARCHAR2(255),                             /*备注                */
   CCMBA009             INTEGER,                                   /*录入人ID            */
   CCMBA010             DATE,                                      /*录入日期            */
   CCMBA011             INTEGER,                                   /*审核人ID            */
   CCMBA012             DATE,                                      /*审核日期            */
   CCMBA013             VARCHAR2(1)                     not null,  /*审核状态            */
   CCMBA014             VARCHAR2(1),                               /*是否签核            */
   CCMBA015             VARCHAR2(30),                              /*签核单号            */
   CCMBA016             VARCHAR2(1),                               /*签核码              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMBA primary key (CCMBA_ID)
);
create unique index AK_TB_CCMBA on TB_CCMBA (CCMBA002);
create sequence SEQ_TB_CCMBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMBA to public;
grant index  on TB_CCMBA to public;
grant update on TB_CCMBA to public; 
grant delete on TB_CCMBA to public;  
grant insert on TB_CCMBA to public; 
grant select on SEQ_TB_CCMBA to public;   