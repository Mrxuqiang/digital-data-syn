/*
================================================================================
表结构代码:TB_SALHO
表结构名称:关联销售单表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SALHO;
drop index AK_TB_SALHO;
drop table TB_SALHO;
create table TB_SALHO  (
   SALHO_ID             INTEGER                         not null,  /*关联销售单ID       */
   SALHO001             INTEGER                         not null,  /*外键销售单ID       */
   SALHO002             INTEGER                         not null,  /*销售单ID           */
   SALHO003             INTEGER                         not null,  /*营运组织ID         */
   SALHO004             VARCHAR2(30),                              /*顾客姓名           */
   SALHO005             VARCHAR2(30),                              /*联系方式           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_SALHO primary key (SALHO_ID)
);
create sequence SEQ_TB_SALHO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALHO to public;
grant index  on TB_SALHO to public;
grant update on TB_SALHO to public; 
grant delete on TB_SALHO to public;  
grant insert on TB_SALHO to public; 
grant select on SEQ_TB_SALHO to public;   