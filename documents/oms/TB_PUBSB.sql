/*
================================================================================
表结构代码:TB_PUBSB
表结构名称:程序因素对照表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBSB;
drop index AK_TB_PUBSB;
drop table TB_PUBSB;
create table TB_PUBSB  (
   PUBSB_ID             INTEGER                         not null,  /*程序因素对照ID     */
   PUBSB001             INTEGER,                                   /*程序ID             */
   PUBSB002             INTEGER,                                   /*影响因素ID               */  
   PUBSB003             VARCHAR2(10),                              /*字段编码             */  
   PUBSB004             INTEGER,                                   /*科目分类ID             */          
   CREATE_USER          VARCHAR2(12),                              /*建立人员               */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门           */                               
   CREATE_DATE          DATE,                                      /*建立日期               */
   MODIFIER             VARCHAR2(12),                              /*修改人员               */
   MODI_DATE            DATE,                                      /*修改日期               */
   FLAG                 NUMBER(1),                                 /*资料状态               */
   constraint PK_TB_PUBSB primary key (PUBSB_ID)
);
create unique index AK_TB_PUBSB on TB_PUBSB (PUBSB001,PUBSB002,PUBSB003);
create sequence SEQ_TB_PUBSB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBSB to public;
grant index  on TB_PUBSB to public;
grant update on TB_PUBSB to public; 
grant delete on TB_PUBSB to public;  
grant insert on TB_PUBSB to public; 
grant select on SEQ_TB_PUBSB to public;   