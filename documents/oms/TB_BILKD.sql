/*
================================================================================
表结构代码:TB_BILKD
表结构名称:日结日志操作记录表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILKD;
drop index AK_TB_BILKD;
drop table TB_BILKD;
create table TB_BILKD  (
   BILKD_ID             INTEGER                         not null,  /*日结日志操作记录ID             */
   BILKD001             DATE                            not null,  /*结账日期                   */
   BILKD002             INTEGER,                                   /*营运组织ID                 */
   BILKD003             INTEGER,                                   /*操作者ID                   */
   BILKD004             DATE                            not null,  /*操作日期                   */
   BILKD005             VARCHAR2(1)                     not null,  /*操作类型1、日结 2反日结    */
   BILKD005             VARCHAR2(15)                    not null,  /*IP地址                     */
   BILKD006             VARCHAR2(255)                           ,  /*备注                       */       
   CREATE_USER          VARCHAR2(12),                              /*建立人员                   */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门               */                               
   CREATE_DATE          DATE,                                      /*建立日期                   */
   MODIFIER             VARCHAR2(12),                              /*修改人员                   */
   MODI_DATE            DATE,                                      /*修改日期                   */
   FLAG                 NUMBER(1),                                 /*资料状态                   */
   constraint PK_TB_BILKD primary key (BILKD_ID)
);
create sequence SEQ_TB_BILKD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILKD to public;
grant index  on TB_BILKD to public;
grant update on TB_BILKD to public; 
grant delete on TB_BILKD to public;  
grant insert on TB_BILKD to public; 
grant select on SEQ_TB_BILKD to public;   