/*
================================================================================
表结构代码:TB_GRTBE
表结构名称:对账主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GRTBE;
drop index AK_TB_GRTBE;
drop table TB_GRTBE;
create table TB_GRTBE  (
   GRTBE_ID             INTEGER                         not null,  /*对账主ID          */
   GRTBE001             INTEGER,                                   /*任务ID            */
   GRTBE002             INTEGER,                                   /*抵消模版ID        */
   GRTBE003             INTEGER,                                   /*对账公司ID        */    
   GRTBE004             INTEGER,                                   /*本方单位ID        */
   GRTBE005             INTEGER,                                   /*对方单位ID        */  
   GRTBE006             DATE,                                      /*会计期间          */   
   GRTBE007             VARCHAR2(1),                               /*是否对符          */  
   GRTBE008             DATE,                                      /*对账时间          */  
   GRTBE009             VARCHAR2(1),                               /*差额对账规则       */           
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_GRTBE primary key (GRTBE_ID)
);
create sequence SEQ_TB_GRTBE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTBE to public;
grant index  on TB_GRTBE to public;
grant update on TB_GRTBE to public; 
grant delete on TB_GRTBE to public;  
grant insert on TB_GRTBE to public; 
grant select on SEQ_TB_GRTBE to public;   