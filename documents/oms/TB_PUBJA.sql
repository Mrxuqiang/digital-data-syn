/*
================================================================================
表结构代码:TB_PUBJA
表结构名称:合同优惠表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBJA;
drop index AK_TB_PUBJA;
drop table TB_PUBJA;
create table TB_PUBJA  (
   PUBJA_ID             INTEGER                         not null,  /*优惠ID             */
   PUBJA001             VARCHAR2(4)                     not null,  /*优惠代码           */
   PUBJA002             VARCHAR2(30)                    not null,  /*优惠名称           */
   PUBJA003             VARCHAR2(255),                             /*优惠说明           */
   PUBJA004             INTEGER                         not null,  /*费用ID             */
   PUBJA005             INTEGER                         not null,  /*公式ID             */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBJA primary key (PUBJA_ID)
);
create unique index AK_TB_PUBJA on TB_PUBJA (PUBJA001);
create sequence SEQ_TB_PUBJA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBJA to public;
grant index  on TB_PUBJA to public;
grant update on TB_PUBJA to public; 
grant delete on TB_PUBJA to public;  
grant insert on TB_PUBJA to public; 
grant select on SEQ_TB_PUBJA to public;   