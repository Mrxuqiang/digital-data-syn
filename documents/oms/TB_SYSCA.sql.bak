\/*
================================================================================
表结构代码:TB_SYSCA
表结构名称:用户标准菜单表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSCA;
drop index AK_TB_SYSCA;
drop table TB_SYSCA;
create table TB_SYSCA  (
   SYSCA_ID             INTEGER                         not null,  /*菜单ID           */
   SYSCA001             VARCHAR2(12)                    not null,  /*菜单类型         */
   SYSCA002             VARCHAR2(16)                    not null,  /*菜单代码         */
   SYSCA003             INTEGER,                                   /*程式ID           */
   SYSCA004             VARCHAR2(100),                             /*菜单图标         */
   SYSCA005             INTEGER,                                   /*上级菜单ID       */
   SYSCA006             NUMBER(12,0),                              /*顺序号           */
   SYSCA007             VARCHAR2(255),                             /*运行参数         */
   SYSCA008             VARCHAR2(1),                               /*作业类型         */
   ISLASTLEV            VARCHAR2(1),                               /*是否末级         */
   LEVNUM               NUMBER(1),                                 /*层级             */
   PARCODE              VARCHAR2(40),                              /*父级代码         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSCA primary key (SYSCA_ID)
);
create unique index AK_TB_SYSCA on TB_SYSCA (SYSCA001,SYSCA002);
create sequence SEQ_TB_SYSCA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSCA to public;
grant index  on TB_SYSCA to public;
grant update on TB_SYSCA to public; 
grant delete on TB_SYSCA to public;  
grant insert on TB_SYSCA to public; 
grant select on SEQ_TB_SYSCA to public;   