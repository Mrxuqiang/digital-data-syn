/*
================================================================================
表结构代码:TB_SERGG
表结构名称:投诉方式
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SERGG;
drop index AK_TB_SERGG;
drop table TB_SERGG;
create table TB_SERGG  (
   SERGG_ID             INTEGER                         not null,  /*投诉方式ID          */
   SERGG001             VARCHAR2(12)                    not null,  /*投诉方式代码        */
   SERGG002             VARCHAR2(20)                    not null,  /*投诉方式名称        */
   SERGG003             VARCHAR2(30)                               /*备注                */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SERGG primary key (SERGG_ID)
);
create unique index AK_TB_SERGG on TB_SERGG (SERGG_ID);
create sequence SEQ_TB_SERGG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERGG to public;
grant index  on TB_SERGG to public;
grant update on TB_SERGG to public; 
grant delete on TB_SERGG to public;  
grant insert on TB_SERGG to public; 
grant select on SEQ_TB_SERGG to public;   