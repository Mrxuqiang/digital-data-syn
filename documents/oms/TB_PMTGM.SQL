/*
================================================================================
表结构代码:TB_PMTGM
表结构名称:累计返券促销单分摊表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTGM;
drop index AK_TB_PMTGM;
drop table TB_PMTGM;
create table TB_PMTGM  (
   PMTGM_ID             INTEGER                         not null,  /*分摊ID        */
   PMTGM001             INTEGER                         not null,  /*累计返券促销单ID      */
   PMTGM002             INTEGER,                                   /*供应商ID          */
   PMTGM003             VARCHAR2(1)                             ,  /*对象类型      */
   PMTGM004             INTEGER,                                   /*对象ID        */
   PMTGM005             NUMBER(12,2),                              /*供应商分摊比率(%) */
   PMTGM006             NUMBER(5)                       not null,  /*分摊优先顺序号    */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTGM primary key (PMTGM_ID)
);
create unique index AK_TB_PMTGM on TB_PMTGM (PMTGM001,PMTGM002,PMTGM003);
create sequence SEQ_TB_PMTGM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTGM to public;
grant index  on TB_PMTGM to public;
grant update on TB_PMTGM to public; 
grant delete on TB_PMTGM to public;  
grant insert on TB_PMTGM to public; 
grant select on SEQ_TB_PMTGM to public;   