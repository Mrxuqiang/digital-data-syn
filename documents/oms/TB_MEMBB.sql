/*
================================================================================
表结构代码:TB_MEMBB
表结构名称:会员卡规则结算表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_MEMBB;
drop index AK_TB_MEMBB;
drop table TB_MEMBB;
create table TB_MEMBB  (
   MEMBB_ID             INTEGER                         not null,  /*会员卡规则结算ID   */
   MEMBB001             INTEGER                         not null,  /*会员卡规则ID       */
   MEMBB002             INTEGER                         not null,  /*结算代码           */
   MEMBB003             VARCHAR2(1)                     not null,  /*可积分             */
   MEMBB004             VARCHAR2(1)                     not null,  /*可折扣             */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_MEMBB primary key (MEMBB_ID)
);
create unique index AK_TB_MEMBB on TB_MEMBB (MEMBB001,MEMBB002);
create sequence SEQ_TB_MEMBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEMBB to public;
grant index  on TB_MEMBB to public;
grant update on TB_MEMBB to public; 
grant delete on TB_MEMBB to public;  
grant insert on TB_MEMBB to public; 
grant select on SEQ_TB_MEMBB to public;   