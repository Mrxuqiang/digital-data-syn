/*
================================================================================
表结构代码:TB_SYSFA
表结构名称:程式BUG处理表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSFA;
drop index AK_TB_SYSFA;
drop table TB_SYSFA;
create table TB_SYSFA  (
   SYSFA_ID             INTEGER                         not null,  /*程式BUG处理ID               */
   SYSFA001             INTEGER                         not null,  /*程式代码                    */
   SYSFA002             VARCHAR2(30),                              /*提交人                      */
   SYSFA003             DATE,                                      /*提交日期                    */
   SYSFA004             VARCHAR2(1000),                            /*问题描述                    */
   SYSFA005             VARCHAR2(255),                             /*备注                        */
   SYSFA006             VARCHAR2(255),                             /*图片                        */
   SYSFA007             VARCHAR2(1),                               /*优先等级1.低 2.中 3.高      */
   SYSFA008             VARCHAR2(1),                               /*状态1.开立 2.派单 3.修改完成 4.完工 */
   SYSFA009             VARCHAR2(30),                              /*处理人                      */
   SYSFA010             DATE,                                      /*处理完成日期                */
   SYSFA011             VARCHAR2(255),                             /*处理说明                    */
   SYSFA012             VARCHAR2(30),                              /*测试人                      */
   SYSFA013             VARCHAR2(255),                             /*测试说明                    */
   SYSFA014             DATE,                                      /*测试完成日期                */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                    */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                */                               
   CREATE_DATE          DATE,                                      /*建立日期                    */
   MODIFIER             VARCHAR2(12),                              /*修改人员                    */
   MODI_DATE            DATE,                                      /*修改日期                    */
   FLAG                 NUMBER(1),                                 /*资料状态                    */
   constraint PK_TB_SYSFA primary key (SYSFA_ID)				              
);
create unique index AK_TB_SYSFA on TB_SYSFA (SYSFA_ID,SYSFA001);
create sequence SEQ_TB_SYSFA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSFA to public;
grant index  on TB_SYSFA to public;
grant update on TB_SYSFA to public; 
grant delete on TB_SYSFA to public;  
grant insert on TB_SYSFA to public; 
grant select on SEQ_TB_SYSFA to public;   