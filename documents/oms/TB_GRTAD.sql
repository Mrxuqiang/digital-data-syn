/*
================================================================================
表结构代码:TB_GRTAD
表结构名称:抵消方案主表  
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GRTAD;
drop index AK_TB_GRTAD;
drop table TB_GRTAD;
create table TB_GRTAD  (
   GRTAD_ID             INTEGER                         not null,  /*抵消方案主ID          */
   GRTAD001             VARCHAR2(10)                    not null,  /*方案编码              */   
   GRTAD002             VARCHAR2(30)                    not null,  /*方案名称              */
   GRTAD003             INTEGER                         not null,  /*创建公司ID            */
   GRTAD004             VARCHAR2(255),                             /*备注                  */             
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_GRTAD primary key (GRTAD_ID)
);
create unique index AK_TB_GRTAD on TB_GRTAD (GRTAD001);
create sequence SEQ_TB_GRTAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTAD to public;
grant index  on TB_GRTAD to public;
grant update on TB_GRTAD to public; 
grant delete on TB_GRTAD to public;  
grant insert on TB_GRTAD to public; 
grant select on SEQ_TB_GRTAD to public;   