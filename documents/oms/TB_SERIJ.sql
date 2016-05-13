/*
================================================================================
表结构代码:TB_SERIJ
表结构名称:同城比价计划主表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SERIJ;
drop index AK_TB_SERIJ;
drop table TB_SERIJ;
create table TB_SERIJ  (
   SERIJ_ID             INTEGER                         not null,  /*比价计划主ID       */
   SERIJ001             INTEGER                         not null,  /*单别               */
   SERIJ002             VARCHAR2(30),                              /*单号               */
   SERIJ003             DATE,                                      /*计划日期           */
   SERIJ004             DATE,                                      /*计划开始日期       */   
   SERIJ005             DATE,                                      /*计划结束日期       */
   SERIJ006             INTEGER,                                   /*计划制定人         */
   SERIJ007             INTEGER,                                   /*商场               */
   SERIJ008             VARCHAR2(255),                             /*备注               */
   SERIJ009             INTEGER,                                   /*录入人             */
   SERIJ010             DATE,                                      /*录入日期           */
   SERIJ011             VARCHAR2(1),                               /*单据状态           */
   SERIJ012             INTEGER,                                   /*审核人             */
   SERIJ013             DATE,                                      /*审核日期           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                 /*资料状态           */
   constraint PK_TB_SERIJ primary key (SERIJ_ID)
);
create unique index AK_TB_SERIJ on TB_SERIJ (SERIJ001,SERIJ002,FLAG);
create sequence SEQ_TB_SERIJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIJ to public;
grant index  on TB_SERIJ to public;
grant update on TB_SERIJ to public; 
grant delete on TB_SERIJ to public;  
grant insert on TB_SERIJ to public; 
grant select on SEQ_TB_SERIJ to public;   