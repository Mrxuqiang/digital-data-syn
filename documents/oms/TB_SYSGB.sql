/*
================================================================================
表结构代码:TB_SYSGB
表结构名称:接口规则表对应表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSGB;
drop index AK_TB_SYSGB;
drop table TB_SYSGB;
create table TB_SYSGB  (
   SYSGB_ID             INTEGER                         not null,  /*接口规则表对应ID */
   SYSGB001             INTEGER                         not null,  /*接口规则ID       */
   SYSGB002             VARCHAR2(30)                    not null,  /*接收方表名       */
   SYSGB003             VARCHAR2(30)                    not null,  /*来源方表名       */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSGB primary key (SYSGB_ID)
);
create unique index AK_TB_SYSGB on TB_SYSGB (SYSGB001,SYSGB002);
create sequence SEQ_TB_SYSGB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSGB to public;
grant index  on TB_SYSGB to public;
grant update on TB_SYSGB to public; 
grant delete on TB_SYSGB to public;  
grant insert on TB_SYSGB to public; 
grant select on SEQ_TB_SYSGB to public;   