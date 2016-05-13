/*
================================================================================
表结构代码:TB_SUPAX
表结构名称:招商计划主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPAX;
drop index AK_TB_SUPAX;
drop table TB_SUPAX;
create table TB_SUPAX  (
   SUPAX_ID             INTEGER                         not null,  /*招商计划ID          */
   SUPAX001             VARCHAR2(16)                    not null,  /*招商计划编号        */
   SUPAX002             VARCHAR2(40)                    not null,  /*招商计划名称        */
   SUPAX003             INTEGER                         not null,  /*招商负责人ID        */
   SUPAX004             INTEGER                         not null,  /*招商营运组织ID      */
   SUPAX005             VARCHAR2(100),                             /*招商计划说明        */
   SUPAX006             DATE                            not null,  /*预计开始日期        */
   SUPAX007             DATE                            not null,  /*预计结束日期        */
   SUPAX008             NUMBER(12,2)                    not null,  /*预计费用            */
   SUPAX009             DATE,                                      /*实际开始日期        */
   SUPAX010             DATE,                                      /*实际结束日期        */
   SUPAX011             NUMBER(12,2),                              /*实际费用            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SUPAX primary key (SUPAX_ID)
);
create unique index AK_TB_SUPAX on TB_SUPAX (SUPAX001);
create sequence SEQ_TB_SUPAX minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAX to public;
grant index  on TB_SUPAX to public;
grant update on TB_SUPAX to public; 
grant delete on TB_SUPAX to public;  
grant insert on TB_SUPAX to public; 
grant select on SEQ_TB_SUPAX to public;   