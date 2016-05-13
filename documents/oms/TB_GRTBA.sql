/*
================================================================================
表结构代码:TB_GRTBA
表结构名称:常用凭证主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GRTBA;
drop index AK_TB_GRTBA;
drop table TB_GRTBA;
create table TB_GRTBA  (
   GRTBA_ID             INTEGER                         not null,  /*常用凭证主ID       */
   GRTBA001             VARCHAR2(10)                    not null,  /*编码               */
   GRTBA002             VARCHAR2(30)                    not null,  /*名称               */
   GRTBA003             DATE,                                      /*制单日期           */    
   GRTBA004             VARCHAR2(1),                               /*凭证类型           */
   GRTBA005             INTEGER,                                   /*创建公司ID         */  
   GRTBA006             INTEGER,                                   /*制单人ID           */             
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_GRTBA primary key (GRTBA_ID)
);
create unique index AK_TB_GRTBA on TB_GRTBA (GRTBA001,GRTBA004);
create sequence SEQ_TB_GRTBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTBA to public;
grant index  on TB_GRTBA to public;
grant update on TB_GRTBA to public; 
grant delete on TB_GRTBA to public;  
grant insert on TB_GRTBA to public; 
grant select on SEQ_TB_GRTBA to public;   