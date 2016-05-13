/*
================================================================================
表结构代码:TB_CCMBF
表结构名称:白卡领退单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMBF;
drop index AK_TB_CCMBF;
drop table TB_CCMBF;
create table TB_CCMBF  (
   CCMBF_ID             INTEGER                         not null,  /*白卡领退单明细ID    */
   CCMBF001             INTEGER                         not null,  /*白卡领退单ID        */
   CCMBF002             INTEGER                         not null,  /*卡种ID              */
   CCMBF003             NUMBER(30)                      not null,  /*开始卡号            */
   CCMBF004             NUMBER(30)                      not null,  /*结束卡号            */
   CCMBF005             NUMBER(12)                      not null,  /*张数                */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMBF primary key (CCMBF_ID)
);
create unique index AK_TB_CCMBF on TB_CCMBF (CCMBF001,CCMBF002,CCMBF003);
create sequence SEQ_TB_CCMBF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMBF to public;
grant index  on TB_CCMBF to public;
grant update on TB_CCMBF to public; 
grant delete on TB_CCMBF to public;  
grant insert on TB_CCMBF to public; 
grant select on SEQ_TB_CCMBF to public;   