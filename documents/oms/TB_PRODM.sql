/*
================================================================================
表结构代码:TB_PRODM
表结构名称:出入证发放单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PRODM;
drop index AK_TB_PRODM;
drop table TB_PRODM;
create table TB_PRODM  (
   PRODM_ID             INTEGER                         not null,  /*出入证发放单子表ID  */
   PRODM001             INTEGER                         not null,  /*出入证发放单ID      */
   PRODM002             INTEGER                         not null,  /*发证单ID            */
   PRODM003             INTEGER                         not null,  /*发证单明细ID        */
   PRODM004             VARCHAR2(100),				   /*备注                */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_PRODM primary key (PRODM_ID)
);
create unique index AK_TB_PRODM on TB_PRODM (PRODM001,PRODM002,PRODM003);
create sequence SEQ_TB_PRODM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRODM to public;
grant index  on TB_PRODM to public;
grant update on TB_PRODM to public; 
grant delete on TB_PRODM to public;  
grant insert on TB_PRODM to public; 
grant select on SEQ_TB_PRODM to public;   

