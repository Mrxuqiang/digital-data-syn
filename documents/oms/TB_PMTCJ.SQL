/*
================================================================================
表结构代码:TB_PMTCJ
表结构名称:折扣单折扣规则表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTCJ;
drop index AK_TB_PMTCJ;
drop table TB_PMTCJ;
create table TB_PMTCJ  (
   PMTCJ_ID             INTEGER                         not null,  /*折扣规则ID        */
   PMTCJ001             INTEGER                         not null,  /*单品折扣单ID      */
   PMTCJ002             VARCHAR2(1)                     not null,  /*对象类型          */
   PMTCJ003             INTEGER,                                   /*对象ID            */
   PMTCJ004             NUMBER(5)                       not null,  /*优先顺序号        */
   PMTCJ005             NUMBER(12,2),                              /*标准售价折扣率(%)     */
   PMTCJ006             NUMBER(12,2),                              /*最低售价折扣率(%) */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTCJ primary key (PMTCJ_ID)
);
create unique index AK_TB_PMTCJ on TB_PMTCJ (PMTCJ001,PMTCJ002,PMTCJ003);
create sequence SEQ_TB_PMTCJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTCJ to public;
grant index  on TB_PMTCJ to public;
grant update on TB_PMTCJ to public; 
grant delete on TB_PMTCJ to public;  
grant insert on TB_PMTCJ to public; 
grant select on SEQ_TB_PMTCJ to public;   