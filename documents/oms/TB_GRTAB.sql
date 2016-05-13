/*
================================================================================
表结构代码:TB_GRTAB
表结构名称:抵消模版主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GRTAB;
drop index AK_TB_GRTAB;
drop table TB_GRTAB;
create table TB_GRTAB  (
   GRTAB_ID             INTEGER                         not null,  /*抵消模版主ID          */
   GRTAB001             VARCHAR2(30)                    not null,  /*名称                  */
   GRTAB002             VARCHAR2(1)                     not null,  /*类型                  */
   GRTAB003             VARCHAR2(1)                     not null,  /*是否模板              */
   GRTAB004             VARCHAR2(1),                               /*是否和增减持有有关    */ 
   GRTAB005             VARCHAR2(1),                               /*是否适用购买法1       */   
   GRTAB006             VARCHAR2(1),                               /*是否适用购买法2       */ 
   GRTAB007             VARCHAR2(1),                               /*是否使用购买法3       */ 
   GRTAB008             VARCHAR2(1),                               /*附加属性              */ 
   GRTAB009             VARCHAR2(1),                               /*是否废弃              */ 
   GRTAB010             VARCHAR2(1),                               /*是否可修改            */   
   GRTAB011             VARCHAR2(255),                             /*备注                  */              
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_GRTAB primary key (GRTAB_ID)
);
create unique index AK_TB_GRTAB on TB_GRTAB (GRTAB001);
create sequence SEQ_TB_GRTAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTAB to public;
grant index  on TB_GRTAB to public;
grant update on TB_GRTAB to public; 
grant delete on TB_GRTAB to public;  
grant insert on TB_GRTAB to public; 
grant select on SEQ_TB_GRTAB to public;   