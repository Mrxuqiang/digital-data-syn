/*
================================================================================
表结构代码:TB_PMTHD
表结构名称:累计赠品单不参与规则表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTHD;
drop index AK_TB_PMTHD;
drop table TB_PMTHD;
create table TB_PMTHD  (
   PMTHD_ID             INTEGER                         not null,  /*赠品不参与规则ID  */
   PMTHD001             INTEGER                         not null,  /*累计赠品单ID      */
   PMTHD002             VARCHAR2(1)                     not null,  /*不参与对象类型    */
   PMTHD003             INTEGER,                                   /*不参与对象ID      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTHD primary key (PMTHD_ID)
);
create unique index AK_TB_PMTHD on TB_PMTHD (PMTHD001,PMTHD002,PMTHD003);
create sequence SEQ_TB_PMTHD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTHD to public;
grant index  on TB_PMTHD to public;
grant update on TB_PMTHD to public; 
grant delete on TB_PMTHD to public;  
grant insert on TB_PMTHD to public; 
grant select on SEQ_TB_PMTHD to public;   