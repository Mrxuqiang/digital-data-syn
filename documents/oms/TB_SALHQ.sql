/*
================================================================================
表结构代码:TB_SALHQ
表结构名称:设计顾问销售计划表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SALHQ;
drop index AK_TB_SALHQ;
drop table TB_SALHQ;
create table TB_SALHQ  (
   SALHQ_ID             INTEGER                          not null, /*设计顾问销售计划ID        */
   SALHQ001             INTEGER                          not null, /*单别ID                    */
   SALHQ002             VARCHAR2(30)                     not null, /*单号                      */
   SALHQ003             INTEGER                          not null, /*营运组织ID                */
   SALHQ004             DATE,                                      /*计划期间                  */
   SALHQ005             INTEGER,                                   /*录入人ID                  */
   SALHQ006             DATE,                                      /*录入日期                  */
   SALHQ007             INTEGER,                                   /*审核人ID                  */
   SALHQ008             DATE,                                      /*审核日期                  */
   SALHQ009             VARCHAR2(1)                      not null, /*审核状态                  */ 
   SALHQ010             VARCHAR2(255),                             /*备注                      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                  */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门              */                            
   CREATE_DATE          DATE,                                      /*建立日期                  */
   MODIFIER             VARCHAR2(12),                              /*修改人员                  */
   MODI_DATE            DATE,                                      /*修改日期                  */
   FLAG                 NUMBER,                                    /*资料状态                  */
   constraint PK_TB_SALHQ primary key (SALHQ_ID)
);
create unique index AK_TB_SALHQ on TB_SALHQ (SALHQ002,SALHQ003,FLAG);
create sequence SEQ_TB_SALHQ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALHQ to public;
grant index  on TB_SALHQ to public;
grant update on TB_SALHQ to public; 
grant delete on TB_SALHQ to public;  
grant insert on TB_SALHQ to public; 
grant select on SEQ_TB_SALHQ to public;   