/*
================================================================================
表结构代码:TB_PUBFA
表结构名称:业务单据设置表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBFA;
drop index AK_TB_PUBFA;
drop table TB_PUBFA;
create table TB_PUBFA  (
   PUBFA_ID             INTEGER                         not null,  /*单别ID             */
   PUBFA001             VARCHAR2(3)                     not null,  /*单别               */
   PUBFA002             VARCHAR2(30)                    not null,  /*单据名称           */
   PUBFA003             INTEGER                         not null,  /*对应程序ID         */
   PUBFA004             VARCHAR2(1),                               /*自动编号否         */
   PUBFA005             INTEGER                         not null,  /*编码规则ID         */
   PUBFA006             VARCHAR2(1),                               /*抛转凭证           */
   PUBFA007             VARCHAR2(1),                               /*立即审核           */
   PUBFA008             VARCHAR2(1),                               /*立即打印           */
   PUBFA009             VARCHAR2(1),                               /*签核               */
   PUBFA010             VARCHAR2(1),                               /*单据类型           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBFA primary key (PUBFA_ID)
);
create unique index AK_TB_PUBFA on TB_PUBFA (PUBFA001);
create sequence SEQ_TB_PUBFA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBFA to public;
grant index  on TB_PUBFA to public;
grant update on TB_PUBFA to public; 
grant delete on TB_PUBFA to public;  
grant insert on TB_PUBFA to public; 
grant select on SEQ_TB_PUBFA to public;   