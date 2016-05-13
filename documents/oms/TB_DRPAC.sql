/*
================================================================================
表结构代码:TB_DRPAC
表结构名称:抵消模版子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DRPAC;
drop index AK_TB_DRPAC;
drop table TB_DRPAC;
create table TB_DRPAC  (
   DRPAC_ID             INTEGER                         not null,  /*抵消模版子ID        */
   DRPAC001             INTEGER                         not null,  /*抵消模版主ID        */   
   DRPAC002             VARCHAR2(1),                               /*借贷方向            */
   DRPAC003             NUMBER(4),                                 /*抵消关系中位置      */
   DRPAC004             INTEGER,                                   /*抵消项目编码        */
   DRPAC005             VARCHAR2(2000),                            /*计算表达式          */  
   DRPAC006             VARCHAR2(1),                               /*是否借贷差额项目    */         
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_DRPAC primary key (DRPAC_ID)
);
create sequence SEQ_TB_DRPAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPAC to public;
grant index  on TB_DRPAC to public;
grant update on TB_DRPAC to public; 
grant delete on TB_DRPAC to public;  
grant insert on TB_DRPAC to public; 
grant select on SEQ_TB_DRPAC to public;   