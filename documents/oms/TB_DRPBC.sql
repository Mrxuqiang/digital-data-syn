/*
================================================================================
表结构代码:TB_DRPBC
表结构名称:调整凭证主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DRPBC;
drop index AK_TB_DRPBC;
drop table TB_DRPBC;
create table TB_DRPBC  (
   DRPBC_ID             INTEGER                         not null,  /* 调整凭证主ID             */
   DRPBC001             INTEGER                         not null,  /* 任务ID                   */
   DRPBC002             DATE,                                      /* 会计期间                 */
   DRPBC003             DATE,                                      /* 录入日期                 */    
   DRPBC004             INTEGER,                                   /* 凭证单位ID               */
   DRPBC005             VARCHAR2(1),                               /* 凭证类型                 */  
   DRPBC006             INTEGER,                                   /* 凭证号                   */   
   DRPBC007             INTEGER,                                   /* 制单人ID                 */  
   DRPBC008             VARCHAR2(1),                               /* 是否作废                 */  
   DRPBC009             VARCHAR2(1),                               /* 是否参与合并结果调整     */  
   DRPBC010             VARCHAR2(255),                             /* 备注                     */ 
   DRPBC011             INTEGER,                                   /* 抵消模版ID               */           
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_DRPBC primary key (DRPBC_ID)
);
create unique index AK_TB_DRPBC on TB_DRPBC (DRPBC002,DRPBC005,DRPBC006);
create sequence SEQ_TB_DRPBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPBC to public;
grant index  on TB_DRPBC to public;
grant update on TB_DRPBC to public; 
grant delete on TB_DRPBC to public;  
grant insert on TB_DRPBC to public; 
grant select on SEQ_TB_DRPBC to public;   