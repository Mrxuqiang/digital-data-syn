/*
================================================================================
表结构代码:TB_RECBB
表结构名称:坏账处理表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_RECBB;
drop index AK_TB_RECBB;
drop table TB_RECBB;
create table TB_RECBB  (
   RECBB_ID             INTEGER                         not null,  /*坏账处理ID              */
   RECBB001             INTEGER                         not null,  /*单别ID              */
   RECBB002             INTEGER                         not null,  /*公司ID              */
   RECBB003             DATE                            not null,  /*坏账日期              */
   RECBB004             INTEGER                         not null,  /*来源单ID                */
   RECBB005             VARCHAR2(30),                              /*单号              */
   RECBB006             INTEGER                         not null,  /*客户ID              */
   RECBB007             INTEGER                         not null,  /*收款客户ID             */
   RECBB008             INTEGER,                                   /*部门ID                  */
   RECBB009             INTEGER ,                                  /*人员ID                  */
   RECBB010             INTEGER                         not null,  /*币种ID                  */
   RECBB011             NUMBER(5,4)                     not null,  /*汇率                  */
   RECBB012             NUMBER(16,2),                              /*原币金额                  */
   RECBB013             NUMBER(16,2),                              /*本币金额                  */
   RECBB014             VARCHAR2(1) ,                               /*类型                  */
   RECBB015             VARCHAR2(255) ,                              /*备注                  */
   RECBB016             INTEGER,                                  /*录入人ID                  */
   RECBB017             DATE,                                     /*录入日期                  */
   RECBB018             VARCHAR2(1),                              /*生成凭证                  */
   CREATE_USER          VARCHAR2(12),                              /*建立人员              */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门          */                               
   CREATE_DATE          DATE,                                      /*建立日期              */
   MODIFIER             VARCHAR2(12),                              /*修改人员              */
   MODI_DATE            DATE,                                      /*修改日期              */
   FLAG                 NUMBER(1),                                 /*资料状态              */
   constraint PK_TB_RECBB primary key (RECBB_ID)
);
create unique index AK_TB_RECBB on TB_RECBB (RECBB001,RECBB002);
create sequence SEQ_TB_RECBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_RECBB to public;
grant index  on TB_RECBB to public;
grant update on TB_RECBB to public; 
grant delete on TB_RECBB to public;  
grant insert on TB_RECBB to public; 
grant select on SEQ_TB_RECBB to public;   