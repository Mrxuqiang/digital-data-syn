/*
================================================================================
表结构代码:TB_CCMDM
表结构名称:券作废单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMDM;
drop index AK_TB_CCMDM;
drop table TB_CCMDM;
create table TB_CCMDM  (
   CCMDM_ID             INTEGER                         not null,  /*券作废单明细ID      */
   CCMDM001             INTEGER                         not null,  /*券作废单ID          */
   CCMDM002             INTEGER                         not null,  /*券种ID              */
   CCMDM003             INTEGER                         not null,  /*券面额ID            */
   CCMDM004             NUMBER(12,2)                    not null,  /*券面额金额          */
   CCMDM005             NUMBER(30)                      not null,  /*开始号码            */
   CCMDM006             NUMBER(30)                      not null,  /*结束号码            */
   CCMDM007             NUMBER(12)                      not null,  /*张数                */
   CCMDM008             NUMBER(12,2)                    not null,  /*券金额              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMDM primary key (CCMDM_ID)
);
create unique index AK_TB_CCMDM on TB_CCMDM (CCMDM001,CCMDM002,CCMDM003,CCMDM005);
create sequence SEQ_TB_CCMDM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDM to public;
grant index  on TB_CCMDM to public;
grant update on TB_CCMDM to public; 
grant delete on TB_CCMDM to public;  
grant insert on TB_CCMDM to public; 
grant select on SEQ_TB_CCMDM to public;   