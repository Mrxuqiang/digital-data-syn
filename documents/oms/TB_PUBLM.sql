/*
================================================================================
表结构代码:TB_PUBLM
表结构名称:会计科目分配表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBLM;
drop index AK_TB_PUBLM;
drop table TB_PUBLM;
create table TB_PUBLM  (
   PUBLM_ID             INTEGER                         not null,  /*会计科目分配ID       */
   PUBLM001             INTEGER                         not null,  /*科目代码ID           */
   PUBLM002             INTEGER                         not null,  /*核算账套ID           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_PUBLM primary key (PUBLM_ID)
);
create unique index AK_TB_PUBLM on TB_PUBLM (PUBLM001,PUBLM002);
create sequence SEQ_TB_PUBLM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLM to public;
grant index  on TB_PUBLM to public;
grant update on TB_PUBLM to public; 
grant delete on TB_PUBLM to public;  
grant insert on TB_PUBLM to public; 
grant select on SEQ_TB_PUBLM to public;   