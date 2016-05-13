/*
================================================================================
表结构代码:TB_HRBAN
表结构名称:员工薪资月档单头
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_HRBAN;
drop index AK_TB_HRBAN;
drop table TB_HRBAN;
create table TB_HRBAN  (
   HRBAN_ID             INTEGER                         not null,  /*员工薪资月档单头表ID */
   HRBAN001             INTEGER                         not null,  /*员工编号ID         */
   HRBAN002             INTEGER                         not null,  /*部门编号ID         */
   HRBAN003             DATE                            not null,  /*发薪年月           */
   HRBAN004             NUMBER(12,2)                    not null,  /*税前总额           */   
   HRBAN005             NUMBER(12,2)                    not null,  /*税额               */
   HRBAN006             NUMBER(12,2)                    not null,  /*实发金额           */
   HRBAN007             VARCHAR2(255),                             /*备注               */
   HRBAN008             INTEGER,                                   /*财年发薪次数       */
   HRBAN009             DATE                            not null,  /*所属财年           */
   HRBAN010             VARCHAR2(1)                     not null,  /*核薪人员确认码     */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_HRBAN primary key (HRBAN_ID)
);
create unique index AK_TB_HRBAN on TB_HRBAN (HRBAN001);
create sequence SEQ_TB_HRBAN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_HRBAN to public;
grant index  on TB_HRBAN to public;
grant update on TB_HRBAN to public; 
grant delete on TB_HRBAN to public;  
grant insert on TB_HRBAN to public; 
grant select on SEQ_TB_HRBAN to public;   