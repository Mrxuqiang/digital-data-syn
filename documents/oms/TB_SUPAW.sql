/*
================================================================================
表结构代码:TB_SUPAW
表结构名称:客商变更银行表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPAW;
drop index AK_TB_SUPAW;
drop table TB_SUPAW;
create table TB_SUPAW  (
   SUPAW_ID             INTEGER                         not null,  /*客商变更银行ID      */
   SUPAW001             INTEGER                         not null,  /*客商变更ID          */
   SUPAW002             VARCHAR2(50)                    not null,  /*银行帐号            */
   SUPAW003             VARCHAR2(255)                   not null,  /*银行名称            */
   SUPAW004             VARCHAR2(255)                   not null,  /*银行地址            */
   SUPAW005             INTEGER                         not null,  /*币种ID              */
   SUPAW006             VARCHAR2(1),                               /*是否默认            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SUPAW primary key (SUPAW_ID)
);
create unique index AK_TB_SUPAW on TB_SUPAW (SUPAW001,SUPAW002);
create sequence SEQ_TB_SUPAW minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAW to public;
grant index  on TB_SUPAW to public;
grant update on TB_SUPAW to public; 
grant delete on TB_SUPAW to public;  
grant insert on TB_SUPAW to public; 
grant select on SEQ_TB_SUPAW to public;   