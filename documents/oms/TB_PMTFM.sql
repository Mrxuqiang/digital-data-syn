/*
================================================================================
表结构代码:TB_PMTFM
表结构名称:销售券
表结构目的:
================================================================================
*/
drop sequence SEQ_TB_PMTFM;
drop index AK_TB_PMTFM;
drop table TB_PMTFM;
create table TB_PMTFM  (
   PMTFM_ID             INTEGER                         not null,  /*销售券id*/
   PMTFM001             INTEGER                         not null,  /*销售单ID         */
   PMTFM002             INTEGER                         ,          /券种ID          */
   PMTFM003             NUMBER(12,2)                         ,     /*券面额          */
   PMTFM004             NUMBER(12)                        ,        /*开始券号       */
   PMTFM005             NUMBER(12)                         ,       /*结束券号      */
   PMTFM006             NUMBER(12)                          ,      /*券张数       */
   PMTFM007             NUMBER(12,2)                         ,     /*券金额    */
    CREATE_USER          VARCHAR2(12),                             /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTFM primary key (PMTFM_ID)
);
create sequence SEQ_TB_PMTFM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTFM to public;
grant index  on TB_PMTFM to public;
grant update on TB_PMTFM to public; 
grant delete on TB_PMTFM to public;  
grant insert on TB_PMTFM to public; 
grant select on SEQ_TB_PMTFM to public;  