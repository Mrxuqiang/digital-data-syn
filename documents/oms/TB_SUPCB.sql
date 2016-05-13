/*
================================================================================
表结构代码:TB_SUPCB
表结构名称:商户线索联系过程表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPCB;
drop index AK_TB_SUPCB;
drop table TB_SUPCB;
create table TB_SUPCB  (
   SUPCB_ID             INTEGER                         not null,  /*过程联系ID          */
   SUPCB001             INTEGER                         not null,  /*商户线索ID          */
   SUPCB002             DATE                            not null,  /*建立日期            */
   SUPCB003             INTEGER                         not null,  /*建立人ID            */
   SUPCB004             VARCHAR2(255),                             /*沟通内容            */
   SUPCB005             VARCHAR2(255),                             /*沟通结果            */
   SUPCB006             DATE,                                      /*下次联系日期        */
   SUPCB007             VARCHAR2(255),                             /*下次联系目标        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SUPCB primary key (SUPCB_ID)
);
create unique index AK_TB_SUPCB on TB_SUPCB (SUPCB_ID,SUPCB001);
create sequence SEQ_TB_SUPCB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPCB to public;
grant index  on TB_SUPCB to public;
grant update on TB_SUPCB to public; 
grant delete on TB_SUPCB to public;  
grant insert on TB_SUPCB to public; 
grant select on SEQ_TB_SUPCB to public;   