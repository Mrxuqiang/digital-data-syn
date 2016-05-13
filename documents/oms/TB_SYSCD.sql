/*
================================================================================
表结构代码:TB_SYSCD
表结构名称:用户自定义菜单表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSCD;
drop index AK_TB_SYSCD;
drop table TB_SYSCD;
create table TB_SYSCD  (
   SYSCD_ID             INTEGER                         not null,  /*菜单ID           */
   SYSCD001             VARCHAR2(12)                    not null,  /*菜单类型         */
   SYSCD002             VARCHAR2(16)                    not null,  /*菜单代码         */
   SYSCD003             INTEGER,                                   /*程式ID           */
   SYSCD004             VARCHAR2(100),                             /*菜单图标         */
   SYSCD005             INTEGER,                                   /*上级菜单ID       */
   SYSCD006             NUMBER(12,0),                              /*顺序号           */
   SYSCD007             VARCHAR2(255),                             /*运行参数         */
   SYSCD008             VARCHAR2(60),                             /*菜单名称         */
   ISLASTLEV            VARCHAR2(1),                               /*是否末级         */
   LEVNUM               NUMBER(1),                                 /*层级             */
   PARCODE              VARCHAR2(40),                              /*父级代码         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSCD primary key (SYSCD_ID)
);
create unique index AK_TB_SYSCD on TB_SYSCD (SYSCD_ID,SYSCD001);
create sequence SEQ_TB_SYSCD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSCD to public;
grant index  on TB_SYSCD to public;
grant update on TB_SYSCD to public; 
grant delete on TB_SYSCD to public;  
grant insert on TB_SYSCD to public; 
grant select on SEQ_TB_SYSCD to public;   