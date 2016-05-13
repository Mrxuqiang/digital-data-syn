/*
================================================================================
表结构代码:TB_PUBFD
表结构名称:自动编码流水记录表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBFD;
drop index AK_TB_PUBFD;
drop table TB_PUBFD;
create table TB_PUBFD  (
   PUBFD_ID             INTEGER                         not null,  /*自动编码流水ID      */
   PUBFD001             INTEGER                         not null,  /*营运组织ID          */
   PUBFD002             INTEGER                         not null,  /*单别ID              */
   PUBFD003             VARCHAR2(30)                    not null,  /*流水号              */
   PUBFD004             VARCHAR2(1)                     not null,  /*单据类型            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_PUBFD primary key (PUBFD_ID)
);
create unique index AK_TB_PUBFD on TB_PUBFD (PUBFD001,PUBFD002,PUBFD003);
create sequence SEQ_TB_PUBFD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBFD to public;
grant index  on TB_PUBFD to public;
grant update on TB_PUBFD to public; 
grant delete on TB_PUBFD to public;  
grant insert on TB_PUBFD to public; 
grant select on SEQ_TB_PUBFD to public;   