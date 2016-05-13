/*
================================================================================
表结构代码:TB_PRODE
表结构名称:装修交费单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PRODE;
drop index AK_TB_PRODE;
drop table TB_PRODE;
create table TB_PRODE  (
   PRODE_ID             INTEGER                         not null,  /*装修交费单子表ID    */
   PRODE001             INTEGER                         not null,  /*装修交费单ID        */
   PRODE002             INTEGER                         not null,  /*交费项目ID          */
   PRODE003             DATE,				           /*对应费用ID          */
   PRODE004             NUMBER(12,2),				   /*交费金额            */
   PRODE005             VARCHAR2(100),				   /*备注                */
   PRODE006             INTEGER,     		                   /*费用单ID            */
   PRODE007             INTEGER,     		                   /*费用单明细ID        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_PRODE primary key (PRODE_ID)
);
create unique index AK_TB_PRODE on TB_PRODE (PRODE001,PRODE002);
create sequence SEQ_TB_PRODE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRODE to public;
grant index  on TB_PRODE to public;
grant update on TB_PRODE to public; 
grant delete on TB_PRODE to public;  
grant insert on TB_PRODE to public; 
grant select on SEQ_TB_PRODE to public;   