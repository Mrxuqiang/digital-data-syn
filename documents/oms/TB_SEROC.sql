/*
================================================================================
表结构代码:TB_SEROC
表结构名称:巡场记录表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SEROC;
drop index AK_TB_SEROC;
drop table TB_SEROC;
create table TB_SEROC  (
   SEROC_ID             INTEGER                         not null,  /*巡场记录ID                 */
   SEROC001             INTEGER                         not null,  /*工作日报主ID               */
   SEROC002             VARCHAR2(8),                               /*巡场开始时间             */
   SEROC003             VARCHAR2(8) ,                              /*选场结束时间              */   
   SEROC004             INTEGER ,                                  /*展位ID                    */   
   SEROC005             VARCHAR2(2) ,                              /*违规事项                  */   
   SEROC006             VARCHAR2(2000) ,                           /*备注                      */   
   SEROC007             VARCHAR2(1) ,                              /*是否开具整改通知单        */   
   SEROC008             INTEGER ,                                  /*巡场人员ID                */      
   CREATE_USER          VARCHAR2(12),                              /*建立人员                    */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                */
   CREATE_DATE          DATE,                                      /*建立日期                    */
   MODIFIER             VARCHAR2(12),                              /*修改人员                    */
   MODI_DATE            DATE,                                      /*修改日期                    */
   FLAG                 NUMBER(1),                                 /*资料状态                    */
   constraint PK_TB_SEROC primary key (SEROC_ID)
);
create sequence SEQ_TB_SEROC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEROC to public;
grant index  on TB_SEROC to public;
grant update on TB_SEROC to public; 
grant delete on TB_SEROC to public;  
grant insert on TB_SEROC to public; 
grant select on SEQ_TB_SEROC to public;   