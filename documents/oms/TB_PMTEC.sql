/*
================================================================================
表结构代码:TB_PMTEC
表结构名称:交款折扣单规则区段表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTEC;
drop index AK_TB_PMTEC;
drop table TB_PMTEC;
create table TB_PMTEC  (
   PMTEC_ID             INTEGER                         not null,  /*规则区段ID        */
   PMTEC001             INTEGER                         not null,  /*交款折扣单ID      */
   PMTEC002             NUMBER(12,2),                              /*金额上限          */
   PMTEC003             NUMBER(12,2),                              /*金额下限          */
   PMTEC004             NUMBER(12,2),                              /*开始金额          */
   PMTEC005             NUMBER(12,2),                              /*结束金额          */
   PMTEC006             NUMBER(12,2),                              /*折扣/比例         */
   PMTEC007             NUMBER(12),                                /*逐单笔数         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTEC primary key (PMTEC_ID)
);
--create unique index AK_TB_PMTEC on TB_PMTEC (PMTEC001,PMTEC002,PMTEC004);
create sequence SEQ_TB_PMTEC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTEC to public;
grant index  on TB_PMTEC to public;
grant update on TB_PMTEC to public; 
grant delete on TB_PMTEC to public;  
grant insert on TB_PMTEC to public; 
grant select on SEQ_TB_PMTEC to public;   