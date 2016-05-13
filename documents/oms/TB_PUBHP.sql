/*
================================================================================
表结构代码:TB_PUBHP
表结构名称:品牌经营小类子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBHP;
drop index AK_TB_PUBHP;
drop table TB_PUBHP;
create table TB_PUBHP  (
   PUBHP_ID             INTEGER                         not null,  /*品牌经营小类ID     */
   PUBHP001             INTEGER                         not null,  /*品牌ID             */
   PUBHP002             INTEGER                         not null,  /*经营小类ID         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBHP primary key (PUBHP_ID)
);
create unique index AK_TB_PUBHP on TB_PUBHP (PUBHP001,PUBHP002);
create sequence SEQ_TB_PUBHP minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHP to public;
grant index  on TB_PUBHP to public;
grant update on TB_PUBHP to public; 
grant delete on TB_PUBHP to public;  
grant insert on TB_PUBHP to public; 
grant select on SEQ_TB_PUBHP to public;   