/*
================================================================================
表结构代码:TB_PRCBA
表结构名称:售价调整单头表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PRCBA;
drop index AK_TB_PRCBA;
drop table TB_PRCBA;
create table TB_PRCBA  (
   PRCBA_ID             INTEGER                         not null,  /*售价调整单头ID    */
   PRCBA001             INTEGER                         not null,  /*单别ID            */
   PRCBA002             VARCHAR2(30)                    not null,  /*售价调整单号      */
   PRCBA003             DATE                            not null,  /*单据日期          */
   PRCBA004             INTEGER                         not null,  /*调价营运组织ID    */
   PRCBA005             INTEGER,                                   /*调价部门ID        */
   PRCBA006             INTEGER,                                   /*调价人员ID        */
   PRCBA007             VARCHAR2(255),                             /*调价原因          */
   PRCBA008             VARCHAR2(1)                     not null,  /*状态              */
   PRCBA009             VARCHAR2(1),                               /*是否签核          */
   PRCBA010             VARCHAR2(30),                              /*签核单号          */
   PRCBA011             VARCHAR2(1),                               /*签核码            */
   PRCBA012             INTEGER,                                   /*录入人ID          */
   PRCBA013             DATE,                                      /*录入日期          */
   PRCBA014             INTEGER,                                   /*审核人ID          */
   PRCBA015             DATE,                                      /*审核日期          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PRCBA primary key (PRCBA_ID)
);
create unique index AK_TB_PRCBA on TB_PRCBA (PRCBA002);
create sequence SEQ_TB_PRCBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCBA to public;
grant index  on TB_PRCBA to public;
grant update on TB_PRCBA to public; 
grant delete on TB_PRCBA to public;  
grant insert on TB_PRCBA to public; 
grant select on SEQ_TB_PRCBA to public;   