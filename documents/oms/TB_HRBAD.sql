/*
================================================================================
表结构代码:TB_HRBAD
表结构名称:社会统筹分类设置表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_HRBAD;
drop index AK_TB_HRBAD;
drop table TB_HRBAD;
create table TB_HRBAD  (
   HRBAD_ID             INTEGER                         not null,  /*社会统筹分类表ID   */
   HRBAD001             VARCHAR2(8)                     not null,  /*编号               */
   HRBAD002             VARCHAR2(30)                    not null,  /*名称               */
   HRBAD003             VARCHAR2(255)                   not null,  /*备注               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_HRBAD primary key (HRBAD_ID)
);
create unique index AK_TB_HRBAD on TB_HRBAD (HRBAD001);
create sequence SEQ_TB_HRBAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_HRBAD to public;
grant index  on TB_HRBAD to public;
grant update on TB_HRBAD to public; 
grant delete on TB_HRBAD to public;  
grant insert on TB_HRBAD to public; 
grant select on SEQ_TB_HRBAD to public;   