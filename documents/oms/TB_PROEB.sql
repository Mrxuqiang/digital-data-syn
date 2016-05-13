/*
================================================================================
表结构代码:TB_PROEB
表结构名称:事件类型定义表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PROEB;
drop index AK_TB_PROEB;
drop table TB_PROEB;
create table TB_PROEB  (
   PROEB_ID             INTEGER                         not null,  /*事件类型ID      */
   PROEB001             VARCHAR2(8)                     not null,  /*事件类型代码    */
   PROEB002             VARCHAR2(30),                              /*事件类型名称    */ 
   PROEB003             VARCHAR2(100),                             /*备注	     */ 
   CREATE_USER          VARCHAR2(12),                              /*建立人员        */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门    */                               
   CREATE_DATE          DATE,                                      /*建立日期        */
   MODIFIER             VARCHAR2(12),                              /*修改人员        */
   MODI_DATE            DATE,                                      /*修改日期        */
   FLAG                 NUMBER(1),                                 /*资料状态        */
   constraint PK_TB_PROEB primary key (PROEB_ID)
);
create unique index AK_TB_PROEB on TB_PROEB (PROEB001);
create sequence SEQ_TB_PROEB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PROEB to public;
grant index  on TB_PROEB to public;
grant update on TB_PROEB to public; 
grant delete on TB_PROEB to public;  
grant insert on TB_PROEB to public; 
grant select on SEQ_TB_PROEB to public;   

