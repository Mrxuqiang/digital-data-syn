/*
================================================================================
表结构代码:TB_SYSGC
表结构名称:接口规则字段对应表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSGC;
drop index AK_TB_SYSGC;
drop table TB_SYSGC;
create table TB_SYSGC  (
   SYSGC_ID             INTEGER                         not null,  /*接口规则字段对应ID */
   SYSGC001             INTEGER                         not null,  /*接口规则ID         */
   SYSGC002             INTEGER                         not null,  /*接口规则表对应ID   */
   SYSGC003             VARCHAR2(30)                    not null,  /*接收方字段名       */
   SYSGC004             VARCHAR2(2)                     not null,  /*接收规则           */
   SYSGC005             VARCHAR2(20)                    not null,  /*来源方字段名       */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_SYSGC primary key (SYSGC_ID)
);
create unique index AK_TB_SYSGC on TB_SYSGC (SYSGC001,SYSGC002,SYSGC003);
create sequence SEQ_TB_SYSGC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSGC to public;
grant index  on TB_SYSGC to public;
grant update on TB_SYSGC to public; 
grant delete on TB_SYSGC to public;  
grant insert on TB_SYSGC to public; 
grant select on SEQ_TB_SYSGC to public;   