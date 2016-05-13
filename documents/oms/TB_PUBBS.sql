/*
================================================================================
表结构代码:TB_PUBBS
表结构名称:员工提成方案主表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_PUBBS;
drop index AK_TB_PUBBS;
drop table TB_PUBBS;
create table TB_PUBBS  (
   PUBBS_ID             INTEGER                         not null,  /*员工提成方案主ID      */
   PUBBS001             INTEGER                         not null,  /*员工ID                */
   PUBBS002             DATE,                                      /*单据日期              */   
   PUBBS003             DATE,                                      /*生效日期              */
   PUBBS004             DATE ,                                     /*失效日期              */
   PUBBS005             VARCHAR2(255),                             /*备注                  */   
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                 /*资料状态           */
   constraint PK_TB_PUBBS primary key (PUBBS_ID)
);
create unique index AK_TB_PUBBS on TB_PUBBS (PUBBS001,PUBBS003,FLAG);
create sequence SEQ_TB_PUBBS minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBS to public;
grant index  on TB_PUBBS to public;
grant update on TB_PUBBS to public; 
grant delete on TB_PUBBS to public;  
grant insert on TB_PUBBS to public; 
grant select on SEQ_TB_PUBBS to public;   