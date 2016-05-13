/*
================================================================================
表结构代码:TB_RECAC
表结构名称:应收直接收款表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_RECAC;
drop index AK_TB_RECAC;
drop table TB_RECAC;
create table TB_RECAC  (
   RECAC_ID             INTEGER                         not null,  /*应收收款ID            */
   RECAC001             INTEGER                         not null,  /*应收单主ID            */
   RECAC002             VARCHAR2(1)                     not null,  /*类型                  */
   RECAC003             VARCHAR2(1),                               /*收款方式              */
   RECAC004             INTEGER ,                                  /*预收款单号ID            */
   RECAC005             INTEGER ,                                  /*收款单号ID              */
   RECAC006             NUMBER(16,2) ,                             /*原币收款金额              */
   RECAC007             VARCHAR2(30),                              /*刷卡卡号              */
   RECAC008             INTEGER,                                   /*手续费率              */
   RECAC009             INTEGER,                                   /*银行账号ID              */
   RECAC010             VARCHAR2(30),                              /*支票                  */
   RECAC011             INTEGER,                                   /*费用编码ID              */
   RECAC012             NUMBER(16,2),                              /*账款金额              */
   RECAC013             NUMBER(16,2) ,                             /*已冲金额              */
   RECAC014             NUMBER(16,2),                              /*账款余额              */
   RECAC015             INTEGER                         not null,  /*收支异动项ID            */ 
   RECAC016             INTEGER,                                   /*会计科目ID           */     
   RECAC017             VARCHAR2(30) ,                             /*预留字段               */   
   RECAC018             NUMBER(16,2),                              /*本币收款金额                 */  
   RECAC019             NUMBER(16,2),                              /*手续费              */ 
   RECAC020             INTEGER,                                   /*营运组织ID             */  
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_RECAC primary key (RECAC_ID)
);
create sequence SEQ_TB_RECAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_RECAC to public;
grant index  on TB_RECAC to public;
grant update on TB_RECAC to public; 
grant delete on TB_RECAC to public;  
grant insert on TB_RECAC to public; 
grant select on SEQ_TB_RECAC to public;   