/*
================================================================================
表结构代码:TB_PMTBC
表结构名称:单品特价单不参与规则表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTBC;
drop index AK_TB_PMTBC;
drop table TB_PMTBC;
create table TB_PMTBC  (
   PMTBC_ID             INTEGER                         not null,  /*折扣不参与规则ID  */
   PMTBC001             INTEGER                         not null,  /*单品特价单ID      */
   PMTBC002             VARCHAR2(1)                     not null,  /*不参与对象类型    */
   PMTBC003             INTEGER,                                   /*不参与对象ID      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTBC primary key (PMTBC_ID)
);
create unique index AK_TB_PMTBC on TB_PMTBC (PMTBC001,PMTBC002,PMTBC003);
create sequence SEQ_TB_PMTBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTBC to public;
grant index  on TB_PMTBC to public;
grant update on TB_PMTBC to public; 
grant delete on TB_PMTBC to public;  
grant insert on TB_PMTBC to public; 
grant select on SEQ_TB_PMTBC to public;   