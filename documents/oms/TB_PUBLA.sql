/*
================================================================================
表结构代码:TB_PUBLA
表结构名称:会计期间方案表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBLA;
drop index AK_TB_PUBLA;
drop table TB_PUBLA;
create table TB_PUBLA  (
   PUBLA_ID             INTEGER                         not null,  /*会计期间方案ID       */
   PUBLA001             VARCHAR2(4)                     not null,  /*期间方案代码         */
   PUBLA002             VARCHAR2(30)                    not null,  /*期间方案名称         */
   PUBLA003             VARCHAR2(60),                              /*期间方案描述         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_PUBLA primary key (PUBLA_ID)
);
create unique index AK_TB_PUBLA on TB_PUBLA (PUBLA001);
create sequence SEQ_TB_PUBLA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLA to public;
grant index  on TB_PUBLA to public;
grant update on TB_PUBLA to public; 
grant delete on TB_PUBLA to public;  
grant insert on TB_PUBLA to public; 
grant select on SEQ_TB_PUBLA to public;   