/*
================================================================================
表结构代码:TB_PMTJD
表结构名称:单品组合单分摊区段表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTJD;
drop index AK_TB_PMTJD;
drop table TB_PMTJD;
create table TB_PMTJD  (
   PMTJD_ID             INTEGER                         not null,  /*分摊区段ID        */
   PMTJD001             INTEGER                         not null,  /*单品组合单ID      */
   PMTJD002             INTEGER                         not null,  /*分摊范围ID        */
   PMTJD003             NUMBER(12,2) ,                             /*开始金额          */
   PMTJD004             NUMBER(12,2) ,                             /*结束金额          */
   PMTJD005             NUMBER(12,2) ,                             /*供应商分摊比例(%) */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTJD primary key (PMTJD_ID)
);
create unique index AK_TB_PMTJD on TB_PMTJD (PMTJD001,PMTJD002,PMTJD003);
create sequence SEQ_TB_PMTJD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTJD to public;
grant index  on TB_PMTJD to public;
grant update on TB_PMTJD to public; 
grant delete on TB_PMTJD to public;  
grant insert on TB_PMTJD to public; 
grant select on SEQ_TB_PMTJD to public;   