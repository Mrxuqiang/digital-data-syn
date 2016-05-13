/*
================================================================================
表结构代码:TB_BANBA
表结构名称:票据购置主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BANBA;
drop index AK_TB_BANBA;
drop table TB_BANBA;
create table TB_BANBA  (
   BANBA_ID             INTEGER                              not null,  /*票据购置主表ID      */
   BANBA001             INTEGER                              not null,  /*票据类型            */
   BANBA002             INTEGER                              not null,  /*币种                */
   BANBA003             INTEGER,                                        /*购置部门            */
   BANBA004             INTEGER,                                        /*购置人              */
   BANBA005             DATE                                 not null,  /*购置日期            */
   BANBA006             INTEGER                              not null,  /*银行账号            */
   BANBA007             NUMBER(16,2),                                   /*购置工本费          */
   BANBA008             VARCHAR2(30)                         not null,  /*票号                */
   BANBA009             NUMBER(16,2),                                   /*手续费              */
   BANBA010             NUMBER(4)                            not null,  /*张数                */
   CREATE_USER          VARCHAR2(12),                                   /*建立人员              */
   USER_GROUP           VARCHAR2(12),                                   /*建立人员部门          */                               
   CREATE_DATE          DATE,                                           /*建立日期              */
   MODIFIER             VARCHAR2(12),                                   /*修改人员              */
   MODI_DATE            DATE,                                           /*修改日期              */
   FLAG                 NUMBER(1),                                      /*资料状态              */
   constraint PK_TB_BANBA priMAry key (BANBA_ID)
);
create unique index AK_TB_BANBA on TB_BANBA (BANBA_ID,BANBA001);
create sequence SEQ_TB_BANBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BANBA to public;
grant index  on TB_BANBA to public;
grant update on TB_BANBA to public; 
grant delete on TB_BANBA to public;  
grant insert on TB_BANBA to public; 
grant select on SEQ_TB_BANBA to public;   