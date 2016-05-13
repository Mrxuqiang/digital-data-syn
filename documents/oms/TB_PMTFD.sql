/*
================================================================================
表结构代码:TB_PMTFD
表结构名称:交款返券单不参与规则表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTFD;
drop index AK_TB_PMTFD;
drop table TB_PMTFD;
create table TB_PMTFD  (
   PMTFD_ID             INTEGER                         not null,  /*返券不参与规则ID  */
   PMTFD001             INTEGER                         not null,  /*交款返券单ID      */
   PMTFD002             VARCHAR2(1)                     not null,  /*不参与对象类型    */
   PMTFD003             INTEGER,                                   /*不参与对象ID      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTFD primary key (PMTFD_ID)
);
create unique index AK_TB_PMTFD on TB_PMTFD (PMTFD001,PMTFD002,PMTFD003);
create sequence SEQ_TB_PMTFD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTFD to public;
grant index  on TB_PMTFD to public;
grant update on TB_PMTFD to public; 
grant delete on TB_PMTFD to public;  
grant insert on TB_PMTFD to public; 
grant select on SEQ_TB_PMTFD to public;   