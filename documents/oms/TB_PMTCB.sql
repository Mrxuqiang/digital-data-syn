/*
================================================================================
表结构代码:TB_PMTCB
表结构名称:单品折扣单折扣规则表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTCB;
drop index AK_TB_PMTCB;
drop table TB_PMTCB;
create table TB_PMTCB  (
   PMTCB_ID             INTEGER                         not null,  /*折扣规则ID        */
   PMTCB001             INTEGER                         not null,  /*单品折扣单ID      */
   PMTCB002             VARCHAR2(1)                     not null,  /*对象类型          */
   PMTCB003             INTEGER,                                   /*对象ID            */
   PMTCB004             NUMBER(5)                       not null,  /*优先顺序号        */
   PMTCB005             NUMBER(12,2),                              /*售价折扣率(%)     */
   PMTCB006             NUMBER(12,2),                              /*会员折扣率(%)     */
   PMTCB007             NUMBER(12,2),                              /*最低售价折扣率(%) */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTCB primary key (PMTCB_ID)
);
create unique index AK_TB_PMTCB on TB_PMTCB (PMTCB001,PMTCB002,PMTCB003);
create sequence SEQ_TB_PMTCB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTCB to public;
grant index  on TB_PMTCB to public;
grant update on TB_PMTCB to public; 
grant delete on TB_PMTCB to public;  
grant insert on TB_PMTCB to public; 
grant select on SEQ_TB_PMTCB to public;   