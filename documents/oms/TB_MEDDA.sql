/*
================================================================================
表结构代码:TB_MEDDA
表结构名称:竞争对手定义表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_MEDDA;
drop index AK_TB_MEDDA;
drop table TB_MEDDA;
create table TB_MEDDA  (
   MEDDA_ID             INTEGER                         not null,  /*竞争对手ID         */
   MEDDA001             VARCHAR2(8)                     not null,  /*竞争对手编号       */
   MEDDA002             VARCHAR2(30)                    not null,  /*竞争对手名称       */
   MEDDA003             VARCHAR2(255),                             /*备注               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_MEDDA primary key (MEDDA_ID)
);
create unique index AK_TB_MEDDA on TB_MEDDA (MEDDA001);
create sequence SEQ_TB_MEDDA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEDDA to public;
grant index  on TB_MEDDA to public;
grant update on TB_MEDDA to public; 
grant delete on TB_MEDDA to public;  
grant insert on TB_MEDDA to public; 
grant select on SEQ_TB_MEDDA to public;   