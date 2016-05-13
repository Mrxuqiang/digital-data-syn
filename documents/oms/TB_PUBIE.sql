/*
================================================================================
表结构代码:TB_PUBIE
表结构名称:楼层表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBIE;
drop index AK_TB_PUBIE;
drop table TB_PUBIE;
create table TB_PUBIE  (
   PUBIE_ID             INTEGER                         not null,  /*楼层ID             */
   PUBIE001             INTEGER                         not null,  /*公司ID             */
   PUBIE002             INTEGER                         not null,  /*营运组织ID         */
   PUBIE003             INTEGER                         not null,  /*楼栋ID             */
   PUBIE004             VARCHAR2(10)                    not null,  /*楼层代码           */
   PUBIE005             VARCHAR2(30)                    not null,  /*楼层名称           */
   PUBIE006             NUMBER(5,2)                     not null,  /*楼层公摊率(%)      */
   PUBIE007             VARCHAR2(1)                     not null,  /*公摊计算公式       */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBIE primary key (PUBIE_ID)
);
create unique index AK_TB_PUBIE on TB_PUBIE (PUBIE004);
create sequence SEQ_TB_PUBIE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBIE to public;
grant index  on TB_PUBIE to public;
grant update on TB_PUBIE to public; 
grant delete on TB_PUBIE to public;  
grant insert on TB_PUBIE to public; 
grant select on SEQ_TB_PUBIE to public;   