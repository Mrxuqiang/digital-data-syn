/*
================================================================================
表结构代码:TB_SUPAV
表结构名称:商户引入银行表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPAV;
drop index AK_TB_SUPAV;
drop table TB_SUPAV;
create table TB_SUPAV  (
   SUPAV_ID             INTEGER                         not null,  /*登记银行ID          */
   SUPAV001             INTEGER                         not null,  /*登记ID              */
   SUPAV002             VARCHAR2(50)                    not null,  /*银行帐号            */
   SUPAV003             VARCHAR2(255)                   not null,  /*银行名称            */
   SUPAV004             VARCHAR2(255)                   not null,  /*银行地址            */
   SUPAV005             INTEGER                         not null,  /*币种ID              */
   SUPAV006             VARCHAR2(1),                               /*是否默认            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SUPAV primary key (SUPAV_ID)
);
create unique index AK_TB_SUPAV on TB_SUPAV (SUPAV001,SUPAV002);
create sequence SEQ_TB_SUPAV minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAV to public;
grant index  on TB_SUPAV to public;
grant update on TB_SUPAV to public; 
grant delete on TB_SUPAV to public;  
grant insert on TB_SUPAV to public; 
grant select on SEQ_TB_SUPAV to public;   