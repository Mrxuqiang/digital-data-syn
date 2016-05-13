/*
================================================================================
表结构代码:TB_PMTHH
表结构名称:累计赠品单生效范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTHH;
drop index AK_TB_PMTHH;
drop table TB_PMTHH;
create table TB_PMTHH  (
   PMTHH_ID             INTEGER                         not null,  /*累计赠品生效范围ID*/
   PMTHH001             INTEGER                         not null,  /*累计赠品单ID      */
   PMTHH002             INTEGER                         not null,  /*营运组织ID        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTHH primary key (PMTHH_ID)
);
create unique index AK_TB_PMTHH on TB_PMTHH (PMTHH001,PMTHH002);
create sequence SEQ_TB_PMTHH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTHH to public;
grant index  on TB_PMTHH to public;
grant update on TB_PMTHH to public; 
grant delete on TB_PMTHH to public;  
grant insert on TB_PMTHH to public; 
grant select on SEQ_TB_PMTHH to public;   