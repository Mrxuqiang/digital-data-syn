/*
================================================================================
表结构代码:TB_PUBRU
表结构名称:合同到期天数表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBRU;
drop index AK_TB_PUBRU;
drop table TB_PUBRU;
create table TB_PUBRU  (
   PUBRU_ID             INTEGER                         not null,  /*合同到期天数ID     */
   PUBRU001             INTEGER                         not null,  /*合同到期天数       */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBRU primary key (PUBRU_ID)
);
create unique index AK_TB_PUBRU on TB_PUBRU (PUBRT001);
create sequence SEQ_TB_PUBRU minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRU to public;
grant index  on TB_PUBRU to public;
grant update on TB_PUBRU to public; 
grant delete on TB_PUBRU to public;  
grant insert on TB_PUBRU to public; 
grant select on SEQ_TB_PUBRU to public;   