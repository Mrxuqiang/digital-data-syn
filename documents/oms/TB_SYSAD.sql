/*
================================================================================
表结构代码:TB_SYSAD
表结构名称:程序定义多语言表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSAD;
drop index AK_TB_SYSAD;
drop table TB_SYSAD;
create table TB_SYSAD  (
   SYSAD_ID             INTEGER                         not null,  /*程序多语言ID     */
   SYSAD001             INTEGER                         not null,  /*语言ID           */
   SYSAD002             INTEGER                         not null,  /*程序ID           */
   SYSAD003             VARCHAR2(60)                    not null,  /*程序名称         */
   SYSAD004             DATE                            not null,  /*异动日期         */
   SYSAD005             VARCHAR2(255),                             /*提示说明         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSAD primary key (SYSAD_ID)
);
create unique index AK_TB_SYSAD on TB_SYSAD (SYSAD001,SYSAD002);
create sequence SEQ_TB_SYSAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSAD to public;
grant index  on TB_SYSAD to public;
grant update on TB_SYSAD to public; 
grant delete on TB_SYSAD to public;  
grant insert on TB_SYSAD to public; 
grant select on SEQ_TB_SYSAD to public;   