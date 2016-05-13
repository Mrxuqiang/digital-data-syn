/*
================================================================================
表结构代码:TB_PMTGD
表结构名称:累计返券单不参与规则表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTGD;
drop index AK_TB_PMTGD;
drop table TB_PMTGD;
create table TB_PMTGD  (
   PMTGD_ID             INTEGER                         not null,  /*返券不参与规则ID  */
   PMTGD001             INTEGER                         not null,  /*累计返券单ID      */
   PMTGD002             VARCHAR2(1)                     not null,  /*不参与对象类型    */
   PMTGD003             INTEGER,                                   /*不参与对象ID      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTGD primary key (PMTGD_ID)
);
create unique index AK_TB_PMTGD on TB_PMTGD (PMTGD001,PMTGD002,PMTGD003);
create sequence SEQ_TB_PMTGD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTGD to public;
grant index  on TB_PMTGD to public;
grant update on TB_PMTGD to public; 
grant delete on TB_PMTGD to public;  
grant insert on TB_PMTGD to public; 
grant select on SEQ_TB_PMTGD to public;   