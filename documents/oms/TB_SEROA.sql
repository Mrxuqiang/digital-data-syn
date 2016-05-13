/*
================================================================================
表结构代码:TB_SEROA
表结构名称:工作日报主表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SEROA;
drop index AK_TB_SEROA;
drop table TB_SEROA;
create table TB_SEROA  (
   SEROA_ID             INTEGER                         not null,  /*工作日报主ID           */
   SEROA001             INTEGER                         not null,  /*单别id                 */
   SEROA002             VARCHAR2(30)                    not null,  /*单号                 */
   SEROA003             DATE                            not null,  /*日期                  */   
   SEROA004             INTEGER ,                                  /*楼层id             */
   SEROA005             INTEGER ,                                  /*商场id             */
   SEROA006             VARCHAR2(255) ,                            /*备注               */
   SEROA007             NUMBER(12) ,                               /*应到人数           */
   SEROA008             NUMBER(12) ,                               /*实到人数           */
   SEROA009             INTEGER ,                                  /*主讲人id           */  
   SEROA010             INTEGER ,                                  /*录入人ID           */  
   CREATE_USER          VARCHAR2(12),                              /*建立人员                    */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                */
   CREATE_DATE          DATE,                                      /*建立日期                    */
   MODIFIER             VARCHAR2(12),                              /*修改人员                    */
   MODI_DATE            DATE,                                      /*修改日期                    */
   FLAG                 NUMBER(1),                                 /*资料状态                    */
   constraint PK_TB_SEROA primary key (SEROA_ID)
);
create unique index AK_TB_SEROA on TB_SEROA (SEROA003,SEROA004,FLAG);
create sequence SEQ_TB_SEROA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEROA to public;
grant index  on TB_SEROA to public;
grant update on TB_SEROA to public; 
grant delete on TB_SEROA to public;  
grant insert on TB_SEROA to public; 
grant select on SEQ_TB_SEROA to public;   