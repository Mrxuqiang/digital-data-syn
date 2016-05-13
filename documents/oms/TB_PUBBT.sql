/*
================================================================================
表结构代码:TB_PUBBT
表结构名称:员工提成方案子表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_PUBBT;
drop index AK_TB_PUBBT;
drop table TB_PUBBT;
create table TB_PUBBT  (
   PUBBT_ID             INTEGER                         not null,  /*员工提成方案主ID       */
   PUBBT001             INTEGER                         not null,  /*员工提成方案子ID       */
   PUBBT002             INTEGER,                                   /*员工ID                */
   PUBBT003             NUMBER(4,2) ,                              /*提成率               */   
   PUBBT004             VARCHAR2(255),                             /*备注                 */   
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_PUBBT primary key (PUBBT_ID)
);
create unique index AK_TB_PUBBT on TB_PUBBT (PUBBT001,PUBBT002,FLAG);
create sequence SEQ_TB_PUBBT minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBT to public;
grant index  on TB_PUBBT to public;
grant update on TB_PUBBT to public; 
grant delete on TB_PUBBT to public;  
grant insert on TB_PUBBT to public; 
grant select on SEQ_TB_PUBBT to public;   