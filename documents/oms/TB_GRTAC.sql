/*
================================================================================
表结构代码:TB_GRTAC
表结构名称:抵消模版子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GRTAC;
drop index AK_TB_GRTAC;
drop table TB_GRTAC;
create table TB_GRTAC  (
   GRTAC_ID             INTEGER                         not null,  /*抵消模版子ID        */
   GRTAC001             INTEGER                         not null,  /*抵消模版主ID        */   
   GRTAC002             VARCHAR2(1),                               /*借贷方向            */
   GRTAC003             NUMBER(4),                                 /*抵消关系中位置      */
   GRTAC004             INTEGER,                                   /*抵消项目编码        */
   GRTAC005             VARCHAR2(2000),                            /*计算表达式          */  
   GRTAC006             VARCHAR2(1),                               /*是否借贷差额项目    */         
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_GRTAC primary key (GRTAC_ID)
);
create sequence SEQ_TB_GRTAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTAC to public;
grant index  on TB_GRTAC to public;
grant update on TB_GRTAC to public; 
grant delete on TB_GRTAC to public;  
grant insert on TB_GRTAC to public; 
grant select on SEQ_TB_GRTAC to public;   