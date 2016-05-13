/*
================================================================================
表结构代码:TB_DRPBE
表结构名称:对账主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DRPBE;
drop index AK_TB_DRPBE;
drop table TB_DRPBE;
create table TB_DRPBE  (
   DRPBE_ID             INTEGER                         not null,  /* 对账主ID                 */
   DRPBE001             INTEGER,                                   /* 任务ID                   */
   DRPBE002             INTEGER,                                   /* 抵消模版ID                 */
   DRPBE003             INTEGER,                                   /* 对账公司ID                 */    
   DRPBE004             INTEGER,                                   /* 本方单位ID               */
   DRPBE005             INTEGER,                                   /* 对方单位ID                 */  
   DRPBE006             DATE,                                      /* 会计期间                   */   
   DRPBE007             VARCHAR2(1),                               /* 是否对符                 */  
   DRPBE008             DATE,                                      /* 对账时间                 */  
   DRPBE009             VARCHAR2(1),                               /* 差额对账规则             */           
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_DRPBE primary key (DRPBE_ID)
);
create sequence SEQ_TB_DRPBE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPBE to public;
grant index  on TB_DRPBE to public;
grant update on TB_DRPBE to public; 
grant delete on TB_DRPBE to public;  
grant insert on TB_DRPBE to public; 
grant select on SEQ_TB_DRPBE to public;   