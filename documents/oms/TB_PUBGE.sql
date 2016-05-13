/*
================================================================================
表结构代码:TB_PUBGE
表结构名称:计量单位表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBGE;
drop index AK_TB_PUBGE;
drop table TB_PUBGE;
create table TB_PUBGE  (
   PUBGE_ID             INTEGER                         not null,  /*计量单位ID         */
   PUBGE001             VARCHAR2(4)                     not null,  /*单位代码           */
   PUBGE002             VARCHAR2(20)                    not null,  /*单位名称           */
   PUBGE003             NUMBER(4)                       not null,  /*小数位数           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBGE primary key (PUBGE_ID)
);
create unique index AK_TB_PUBGE on TB_PUBGE (PUBGE001);
create sequence SEQ_TB_PUBGE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGE to public;
grant index  on TB_PUBGE to public;
grant update on TB_PUBGE to public; 
grant delete on TB_PUBGE to public;  
grant insert on TB_PUBGE to public; 
grant select on SEQ_TB_PUBGE to public;   