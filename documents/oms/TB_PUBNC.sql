/*
================================================================================
表结构代码:TB_PUBNC
表结构名称:结算单位收支表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBNC;
drop index AK_TB_PUBNC;
drop table TB_PUBNC;
create table TB_PUBNC  (
   PUBNC_ID             INTEGER                         not null,   /*结算单位收支ID          */
   PUBNC001             INTEGER                         not null,   /*结算单位主ID            */
   PUBNC002             INTEGER,                                    /*收支项目编码ID          */
   PUBNC004             NUMBER(16,2),                               /*监控额度                */
   PUBNC005             INTEGER,                                    /*币种ID                  */
   CREATE_USER          VARCHAR2(12),                               /*建立人员                */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门            */                               
   CREATE_DATE          DATE,                                       /*建立日期                */
   MODIFIER             VARCHAR2(12),                               /*修改人员                */
   MODI_DATE            DATE,                                       /*修改日期                */
   FLAG                 NUMBER(1),                                  /*资料状态                */
   constraint PK_TB_PUBNC primary key (PUBNC_ID)
);
create unique index AK_TB_PUBNC on TB_PUBNC (PUBNC001);
create sequence SEQ_TB_PUBNC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBNC to public;
grant index  on TB_PUBNC to public;
grant update on TB_PUBNC to public; 
grant delete on TB_PUBNC to public;  
grant insert on TB_PUBNC to public; 
grant select on SEQ_TB_PUBNC to public;   