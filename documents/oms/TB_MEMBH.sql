/*
================================================================================
表结构代码:TB_MEMBH
表结构名称:会员卡规则等级表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_MEMBH;
drop index AK_TB_MEMBH;
drop table TB_MEMBH;
create table TB_MEMBH  (
   MEMBH_ID             INTEGER                         not null,  /*会员卡规则等级ID   */
   MEMBH001             INTEGER                         not null,  /*会员卡规则ID       */
   MEMBH002             INTEGER                         not null,  /*等级代码ID         */
   MEMBH003             NUMBER(12,0)                    not null,  /*开始积分           */
   MEMBH004             NUMBER(12,0)                    not null,  /*结束积分           */
   MEMBH005             NUMBER(12,2)                    not null,  /*折扣率(%)          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_MEMBH primary key (MEMBH_ID)
);
create unique index AK_TB_MEMBH on TB_MEMBH (MEMBH001,MEMBH002);
create sequence SEQ_TB_MEMBH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEMBH to public;
grant index  on TB_MEMBH to public;
grant update on TB_MEMBH to public; 
grant delete on TB_MEMBH to public;  
grant insert on TB_MEMBH to public; 
grant select on SEQ_TB_MEMBH to public;   