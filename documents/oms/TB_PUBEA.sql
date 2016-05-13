/*
================================================================================
表结构代码:TB_PUBEA
表结构名称:币种表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBEA;
drop index AK_TB_PUBEA;
drop table TB_PUBEA;
create table TB_PUBEA  (
   PUBEA_ID             INTEGER                         not null,  /*币种ID             */
   PUBEA001             VARCHAR2(4)                     not null,  /*币种代码           */
   PUBEA002             VARCHAR2(20)                    not null,  /*币种名称           */
   PUBEA003             VARCHAR2(2)                     not null,  /*币种符号           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBEA primary key (PUBEA_ID)
);
create unique index AK_TB_PUBEA on TB_PUBEA (PUBEA001);
create sequence SEQ_TB_PUBEA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBEA to public;
grant index  on TB_PUBEA to public;
grant update on TB_PUBEA to public; 
grant delete on TB_PUBEA to public;  
grant insert on TB_PUBEA to public; 
grant select on SEQ_TB_PUBEA to public;   