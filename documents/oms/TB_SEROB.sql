/*
================================================================================
表结构代码:TB_SEROB
表结构名称:晨会记录表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SEROB;
drop index AK_TB_SEROB;
drop table TB_SEROB;
create table TB_SEROB  (
   SEROB_ID             INTEGER                         not null,  /*晨会记录ID             */
   SEROB001             INTEGER                         not null,  /*工作日报主ID           */
   SEROB002             VARCHAR2(2),                               /*事项                 */
   SEROB003             VARCHAR2(2000) ,                           /*内容                  */   
   CREATE_USER          VARCHAR2(12),                              /*建立人员                    */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                */
   CREATE_DATE          DATE,                                      /*建立日期                    */
   MODIFIER             VARCHAR2(12),                              /*修改人员                    */
   MODI_DATE            DATE,                                      /*修改日期                    */
   FLAG                 NUMBER(1),                                 /*资料状态                    */
   constraint PK_TB_SEROB primary key (SEROB_ID)
);
create sequence SEQ_TB_SEROB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEROB to public;
grant index  on TB_SEROB to public;
grant update on TB_SEROB to public; 
grant delete on TB_SEROB to public;  
grant insert on TB_SEROB to public; 
grant select on SEQ_TB_SEROB to public;   