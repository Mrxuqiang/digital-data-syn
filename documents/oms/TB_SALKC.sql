/*
================================================================================
表结构代码:TB_SALKC
表结构名称:销售年度指标主表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SALKC;
drop index AK_TB_SALKC;
drop table TB_SALKC;
create table TB_SALKC  (
   SALKC_ID             INTEGER                         not null,      /*销售年度指标单ID*/
   SALKC001             INTEGER                         not null,      /*单别ID          */
   SALKC002             VARCHAR2(30)                    not null,      /*销售年度指标单号*/
   SALKC003             DATE                            not null,      /*单据日期        */
   SALKC004             INTEGER                         not null,      /*营运组织ID      */
   SALKC005             VARCHAR2(4)                             ,      /*计划年度        */
   SALKC006             INTEGER,                                       /*录入人ID        */
   SALKC007             DATE,                                          /*录入日期        */
   SALKC008             INTEGER,                                       /*审核人ID        */
   SALKC009             DATE,                                          /*审核日期        */
   SALKC010             VARCHAR2(1)                     not null,      /*审核状态        */
   SALKC011             VARCHAR2(255),                                 /*备注            */
   CREATE_USER          VARCHAR2(12),                                  /*建立人员        */
   USER_GROUP           VARCHAR2(12),                                  /*建立人员部门    */                               
   CREATE_DATE          DATE,                                          /*建立日期        */
   MODIFIER             VARCHAR2(12),                                  /*修改人员        */
   MODI_DATE            DATE,                                          /*修改日期        */
   FLAG                 NUMBER,                                        /*资料状态        */
   constraint PK_TB_SALKC primary key (SALKC_ID)
);
create unique index AK_TB_SALKC on TB_SALKC (SALKC002,SALKC004,FLAG);
create sequence SEQ_TB_SALKC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALKC to public;
grant index  on TB_SALKC to public;
grant update on TB_SALKC to public; 
grant delete on TB_SALKC to public;  
grant insert on TB_SALKC to public; 
grant select on SEQ_TB_SALKC to public;   