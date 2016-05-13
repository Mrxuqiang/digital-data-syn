/*
================================================================================
表结构代码:TB_PMTHG
表结构名称:累计赠品单生效时间表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTHG;
drop index AK_TB_PMTHG;
drop table TB_PMTHG;
create table TB_PMTHG  (
   PMTHG_ID             INTEGER                         not null,  /*累计赠品生效时间ID*/
   PMTHG001             INTEGER                         not null,  /*累计赠品单ID      */
   PMTHG002             DATE                            not null,  /*开始日期          */
   PMTHG003             VARCHAR2(8)                     not null,  /*开始时间          */
   PMTHG004             DATE                            not null,  /*结束日期          */
   PMTHG005             VARCHAR2(8)                     not null,  /*结束时间          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTHG primary key (PMTHG_ID)
);
create unique index AK_TB_PMTHG on TB_PMTHG (PMTHG001,PMTHG002,PMTHG003);
create sequence SEQ_TB_PMTHG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTHG to public;
grant index  on TB_PMTHG to public;
grant update on TB_PMTHG to public; 
grant delete on TB_PMTHG to public;  
grant insert on TB_PMTHG to public; 
grant select on SEQ_TB_PMTHG to public;   