/*
================================================================================
表结构代码:TB_CCMCA
表结构名称:消费卡授权表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMCA;
drop index AK_TB_CCMCA;
drop table TB_CCMCA;
create table TB_CCMCA  (
   CCMCA_ID             INTEGER                         not null,  /*授权ID              */
   CCMCA001             INTEGER                         not null,  /*用户ID              */
   CCMCA002             VARCHAR2(30)                    not null,  /*用户密码            */
   CCMCA003             VARCHAR2(1),                               /*是否管理员          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMCA primary key (CCMCA_ID)
);
create unique index AK_TB_CCMCA on TB_CCMCA (CCMCA001);
create sequence SEQ_TB_CCMCA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMCA to public;
grant index  on TB_CCMCA to public;
grant update on TB_CCMCA to public; 
grant delete on TB_CCMCA to public;  
grant insert on TB_CCMCA to public; 
grant select on SEQ_TB_CCMCA to public;   