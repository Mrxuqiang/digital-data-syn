/*
================================================================================
表结构代码:TB_PMTLC
表结构名称:预算费用表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_PMTLC;
drop index AK_TB_PMTLC;
drop table TB_PMTLC;
create table TB_PMTLC  (
   PMTLC_ID             INTEGER                         not null,  /*预算费用ID     */
   PMTLC001             INTEGER                         not null,  /*活动费用预算ID */
   PMTLC002             VARCHAR2(30)                    not null,  /*费用名称       */
   PMTLC003             NUMBER(18,2),                   not null,  /*金额           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员       */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门   */                               
   CREATE_DATE          DATE,                                      /*建立日期       */
   MODIFIER             VARCHAR2(12),                              /*修改人员       */
   MODI_DATE            DATE,                                      /*修改日期       */
   FLAG                 NUMBER,                                    /*资料状态       */
   constraint PK_TB_PMTLC primary key (PMTLC_ID)
);
create unique index AK_TB_PMTLC on TB_PMTLC (PMTLC_ID,FLAG);
create sequence SEQ_TB_PMTLC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTLC to public;
grant index  on TB_PMTLC to public;
grant update on TB_PMTLC to public; 
grant delete on TB_PMTLC to public;  
grant insert on TB_PMTLC to public; 
grant select on SEQ_TB_PMTLC to public;   