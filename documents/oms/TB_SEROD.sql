/*
================================================================================
表结构代码:TB_SEROD
表结构名称:巡场记录表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SEROD;
drop index AK_TB_SEROD;
drop table TB_SEROD;
create table TB_SEROD  (
   SEROD_ID             INTEGER                         not null,  /*工作记录ID                */
   SEROD001             INTEGER                         not null,  /*工作日报主ID              */
   SEROD002             VARCHAR2(2),                               /*事由                    */
   SEROD003             VARCHAR2(2000) ,                           /*备注                     */   
   SEROD004             VARCHAR2(1) ,                              /*是否开具整改通知单       */   
   SEROD005             INTEGER ,                                  /*工作人员ID               */      
   CREATE_USER          VARCHAR2(12),                              /*建立人员                    */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                */ 
   CREATE_DATE          DATE,                                      /*建立日期                    */
   MODIFIER             VARCHAR2(12),                              /*修改人员                    */
   MODI_DATE            DATE,                                      /*修改日期                    */
   FLAG                 NUMBER(1),                                 /*资料状态                    */
   constraint PK_TB_SEROD primary key (SEROD_ID)
);
create sequence SEQ_TB_SEROD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEROD to public;
grant index  on TB_SEROD to public;
grant update on TB_SEROD to public; 
grant delete on TB_SEROD to public;  
grant insert on TB_SEROD to public; 
grant select on SEQ_TB_SEROD to public;   