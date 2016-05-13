/*
================================================================================
表结构代码:TB_PUBCC
表结构名称:部门表
表结构目的:局部表，全局表
================================================================================
*/
drop sequence SEQ_TB_PUBCC;
drop index AK_TB_PUBCC;
drop table TB_PUBCC;
create table TB_PUBCC  (
   PUBCC_ID             INTEGER                         not null,  /*部门ID             */
   PUBCC001             VARCHAR2(12)                    not null,  /*部门代码           */
   PUBCC002             VARCHAR2(30)                    not null,  /*部门简称           */
   PUBCC003             VARCHAR2(40)                    not null,  /*部门全称           */
   PUBCC004             INTEGER,                                   /*所属上级部门ID     */
   PUBCC005             INTEGER                         not null,  /*部门属性ID         */
   PUBCC006             VARCHAR2(30),                              /*电话               */
   PUBCC007             VARCHAR2(30),                              /*传真               */
   PUBCC008             INTEGER,                                   /*营运组织ID         */
   PUBCC009             VARCHAR2(30),                              /*当前层级代码       */
   ISLASTLEV            VARCHAR2(1),                               /*是否末级           */
   LEVNUM               NUMBER(1),                                 /*层级               */
   PARCODE              VARCHAR2(40),                              /*父级代码           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBCC primary key (PUBCC_ID)
);
create unique index AK_TB_PUBCC on TB_PUBCC (PUBCC001);
create sequence SEQ_TB_PUBCC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBCC to public;
grant index  on TB_PUBCC to public;
grant update on TB_PUBCC to public; 
grant delete on TB_PUBCC to public;  
grant insert on TB_PUBCC to public; 
grant select on SEQ_TB_PUBCC to public;   