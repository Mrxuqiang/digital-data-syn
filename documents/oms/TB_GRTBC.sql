/*
================================================================================
表结构代码:TB_GRTBC
表结构名称:调整凭证主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GRTBC;
drop index AK_TB_GRTBC;
drop table TB_GRTBC;
create table TB_GRTBC  (
   GRTBC_ID             INTEGER                         not null,  /*调整凭证主ID             */
   GRTBC001             INTEGER                         not null,  /*任务ID                   */
   GRTBC002             DATE,                                      /*会计期间                 */
   GRTBC003             DATE,                                      /*录入日期                 */    
   GRTBC004             INTEGER,                                   /*凭证单位ID               */
   GRTBC005             VARCHAR2(1),                               /*凭证类型                 */  
   GRTBC006             INTEGER,                                   /*凭证号                   */   
   GRTBC007             INTEGER,                                   /*制单人ID                 */  
   GRTBC008             VARCHAR2(1),                               /*是否作废                 */  
   GRTBC009             VARCHAR2(1),                               /*是否参与合并结果调整     */  
   GRTBC010             VARCHAR2(255),                             /*备注                     */ 
   GRTBC011             INTEGER,                                   /*抵消模版ID               */           
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_GRTBC primary key (GRTBC_ID)
);
create unique index AK_TB_GRTBC on TB_GRTBC (GRTBC002,GRTBC005,GRTBC006);
create sequence SEQ_TB_GRTBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTBC to public;
grant index  on TB_GRTBC to public;
grant update on TB_GRTBC to public; 
grant delete on TB_GRTBC to public;  
grant insert on TB_GRTBC to public; 
grant select on SEQ_TB_GRTBC to public;   