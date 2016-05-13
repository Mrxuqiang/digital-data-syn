/*
================================================================================
表结构代码:TB_DRPBA
表结构名称:常用凭证主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DRPBA;
drop index AK_TB_DRPBA;
drop table TB_DRPBA;
create table TB_DRPBA  (
   DRPBA_ID             INTEGER                         not null,  /* 常用凭证主ID       */
   DRPBA001             VARCHAR2(10)                    not null,  /* 编码               */
   DRPBA002             VARCHAR2(30)                    not null,  /* 名称               */
   DRPBA003             DATE,                                      /* 制单日期           */    
   DRPBA004             VARCHAR2(1),                               /* 凭证类型           */
   DRPBA005             INTEGER,                                   /* 创建公司ID         */  
   DRPBA006             INTEGER,                                   /* 制单人ID           */             
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_DRPBA primary key (DRPBA_ID)
);
create unique index AK_TB_DRPBA on TB_DRPBA (DRPBA001,DRPBA004);
create sequence SEQ_TB_DRPBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPBA to public;
grant index  on TB_DRPBA to public;
grant update on TB_DRPBA to public; 
grant delete on TB_DRPBA to public;  
grant insert on TB_DRPBA to public; 
grant select on SEQ_TB_DRPBA to public;   