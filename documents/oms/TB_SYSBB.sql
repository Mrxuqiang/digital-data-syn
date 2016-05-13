/*
================================================================================
表结构代码:TB_SYSBB
表结构名称:表结构字段表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSBB;
drop index AK_TB_SYSBB;
drop table TB_SYSBB;
create table TB_SYSBB  (
   SYSBB_ID             INTEGER                         not null,  /*表字段ID         */
   SYSBB001             INTEGER                         not null,  /*表结构ID         */
   SYSBB002             VARCHAR2(30)                    not null,  /*字段名称         */
   SYSBB003             VARCHAR2(30)                    not null,  /*字段说明         */
   SYSBB004             VARCHAR2(20)                    not null,  /*字段类型         */
   SYSBB005             NUMBER(5)                       not null,  /*长度             */
   SYSBB006             NUMBER(5),                                 /*小数位           */
   SYSBB007             VARCHAR2(1),                               /*不允许NULL       */
   SYSBB008             VARCHAR2(15),                              /*缺省值           */ 
   SYSBB009             VARCHAR2(30),                              /*字段说明         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSBB primary key (SYSBB_ID)
);
create unique index AK_TB_SYSBB on TB_SYSBB (SYSBB001,SYSBB002);
create sequence SEQ_TB_SYSBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSBB to public;
grant index  on TB_SYSBB to public;
grant update on TB_SYSBB to public; 
grant delete on TB_SYSBB to public;  
grant insert on TB_SYSBB to public; 
grant select on SEQ_TB_SYSBB to public;   