/*
================================================================================
表结构代码:TB_SYSDD
表结构名称:用户权限表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSDD;
drop index AK_TB_SYSDD;
drop table TB_SYSDD;
create table TB_SYSDD  (
   SYSDD_ID             INTEGER                         not null,  /*用户权限ID       */
   SYSDD001             INTEGER                         not null,  /*员工ID           */
   SYSDD002             VARCHAR2(20)                    not null,  /*用户密码         */
   SYSDD003             INTEGER                         not null,  /*部门ID           */
   SYSDD004             INTEGER                         not null,  /*语言ID           */
   SYSDD005             INTEGER,                                   /*用户流程ID       */
   SYSDD006             VARCHAR2(60),                              /*E_Mail           */
   SYSDD007             NUMBER(12,2),                              /*商品最低折扣率 20100312 add by zhawj  */
   SYSDD008             NUMBER(12,2),                              /*样品最低折扣率 20100815 add by hansf  */
   SYSDD009             NUMBER(12,2),                              /*处理品最低折扣率 20100815 add by hansf*/
   SYSDD011             VARCHAR2(1),                              /*账号类型，1.内部；2.外部，默认为1.内部*/
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSDD primary key (SYSDD_ID)
);
create unique index AK_TB_SYSDD on TB_SYSDD (SYSDD001);
create sequence SEQ_TB_SYSDD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSDD to public;
grant index  on TB_SYSDD to public;
grant update on TB_SYSDD to public; 
grant delete on TB_SYSDD to public;  
grant insert on TB_SYSDD to public; 
grant select on SEQ_TB_SYSDD to public;   