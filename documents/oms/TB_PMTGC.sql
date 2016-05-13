/*
================================================================================
表结构代码:TB_PMTGC
表结构名称:累计返券单规则区段表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTGC;
drop index AK_TB_PMTGC;
drop table TB_PMTGC;
create table TB_PMTGC  (
   PMTGC_ID             INTEGER                         not null,  /*规则区段ID        */
   PMTGC001             INTEGER                         not null,  /*累计返券单ID      */
   PMTGC002             INTEGER                         not null,  /*券种类ID          */
   PMTGC003             VARCHAR2(2)                     not null,  /*取整方向          */
   PMTGC004             NUMBER(12,2),                              /*金额上限          */
   PMTGC005             NUMBER(12,2),                              /*金额下限          */
   PMTGC006             NUMBER(12,2),                              /*开始金额          */
   PMTGC007             NUMBER(12,2),                              /*结束金额          */
   PMTGC008             NUMBER(12,2),                              /*供应商分摊比例(%) */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTGC primary key (PMTGC_ID)
);
create unique index AK_TB_PMTGC on TB_PMTGC (PMTGC001,PMTGC002,PMTGC004,PMTGC006);
create sequence SEQ_TB_PMTGC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTGC to public;
grant index  on TB_PMTGC to public;
grant update on TB_PMTGC to public; 
grant delete on TB_PMTGC to public;  
grant insert on TB_PMTGC to public; 
grant select on SEQ_TB_PMTGC to public;   