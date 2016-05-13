/*
================================================================================
表结构代码:TB_PUBFB
表结构名称:单据编码规则表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBFB;
drop index AK_TB_PUBFB;
drop table TB_PUBFB;
create table TB_PUBFB  (
   PUBFB_ID             INTEGER                         not null,  /*编码规则ID         */
   PUBFB001             VARCHAR2(3)                     not null,  /*编码规则代码       */
   PUBFB002             VARCHAR2(30)                    not null,  /*编码规则名称       */
   PUBFB003             VARCHAR2(1)                     not null,  /*单别               */
   PUBFB004             VARCHAR2(1)                     not null,  /*年月               */
   PUBFB005             NUMBER(2)                       not null,  /*流水码             */
   PUBFB006             VARCHAR2(1)                     not null,  /*营运组织前置码     */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBFB primary key (PUBFB_ID)
);
create unique index AK_TB_PUBFB on TB_PUBFB (PUBFB001);
create sequence SEQ_TB_PUBFB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBFB to public;
grant index  on TB_PUBFB to public;
grant update on TB_PUBFB to public; 
grant delete on TB_PUBFB to public;  
grant insert on TB_PUBFB to public; 
grant select on SEQ_TB_PUBFB to public;   