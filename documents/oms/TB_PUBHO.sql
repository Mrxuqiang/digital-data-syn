/*
================================================================================
表结构代码:TB_PUBHO
表结构名称:品牌等级表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBHO;
drop index AK_TB_PUBHO;
drop table TB_PUBHO;
create table TB_PUBHO  (
   PUBHO_ID             INTEGER                         not null,  /*品牌等级ID         */
   PUBHO001             VARCHAR2(4)                     not null,  /*品牌等级代码       */
   PUBHO002             VARCHAR2(40)                    not null,  /*等品牌级名称       */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBHO primary key (PUBHO_ID)
);
create unique index AK_TB_PUBHO on TB_PUBHO (PUBHO001);
create sequence SEQ_TB_PUBHO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHO to public;
grant index  on TB_PUBHO to public;
grant update on TB_PUBHO to public; 
grant delete on TB_PUBHO to public;  
grant insert on TB_PUBHO to public; 
grant select on SEQ_TB_PUBHO to public;   