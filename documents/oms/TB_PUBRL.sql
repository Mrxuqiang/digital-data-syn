/*
================================================================================
表结构代码:TB_PUBRL
表结构名称:对账规则对方表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBRL;
drop index AK_TB_PUBRL;
drop table TB_PUBRL;
create table TB_PUBRL  (
   PUBRL_ID             INTEGER                         not null,  /*对账规则对方ID       */
   PUBRL001             INTEGER                         not null,  /*对账规则主ID         */
   PUBRL002             INTEGER                         not null,  /*会计科目ID           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_PUBRL primary key (PUBRL_ID)
);
create unique index AK_TB_PUBRL on TB_PUBRL (PUBRL001);
create sequence SEQ_TB_PUBRL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRL to public;
grant index  on TB_PUBRL to public;
grant update on TB_PUBRL to public; 
grant delete on TB_PUBRL to public;  
grant insert on TB_PUBRL to public; 
grant select on SEQ_TB_PUBRL to public;   