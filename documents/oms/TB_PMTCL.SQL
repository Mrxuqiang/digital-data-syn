/*
================================================================================
表结构代码:TB_PMTCL
表结构名称:单品折扣单分摊表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTCL;
drop index AK_TB_PMTCL;
drop table TB_PMTCL;
create table TB_PMTCL  (
   PMTCL_ID             INTEGER                         not null,  /*折扣分摊ID        */
   PMTCL001              INTEGER                         not null, /*单品折扣单ID      */
   PMTCL002             INTEGER,                                   /*供应商ID          */
   PMTCL003             VARCHAR2(1)                          ,     /*对象类型          */
   PMTCL004             INTEGER,                                   /*对象ID            */
   PMTCL005             NUMBER(12,2),                              /*供应商分摊比率(%) */
   PMTCL006             NUMBER(5)                       not null,  /*分摊优先顺序号    */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTCL primary key (PMTCL_ID)
);
create unique index AK_TB_PMTCL on TB_PMTCL (PMTCL001,PMTCL002,PMTCL003);
create sequence SEQ_TB_PMTCL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTCL to public;
grant index  on TB_PMTCL to public;
grant update on TB_PMTCL to public; 
grant delete on TB_PMTCL to public;  
grant insert on TB_PMTCL to public; 
grant select on SEQ_TB_PMTCL to public;   