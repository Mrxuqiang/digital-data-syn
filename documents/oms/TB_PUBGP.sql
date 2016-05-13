/*
================================================================================
表结构代码:TB_PUBGP
表结构名称:客商资质表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBGP;
drop index AK_TB_PUBGP;
drop table TB_PUBGP;
create table TB_PUBGP  (
   PUBGP_ID             INTEGER                         not null,  /*客商资质ID         */
   PUBGP001             INTEGER                         not null,  /*客商ID             */
   PUBGP002             INTEGER                         not null,  /*证件类型ID         */
   PUBGP003             VARCHAR2(40)                    not null,  /*证件号码           */
   PUBGP004             VARCHAR2(30)                    not null,  /*持证人             */
   PUBGP005             DATE,                                      /*有效期起日         */
   PUBGP006             DATE,                                      /*有效期止日         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBGP primary key (PUBGP_ID)
);
create unique index AK_TB_PUBGP on TB_PUBGP (PUBGP001,PUBGP002);
create sequence SEQ_TB_PUBGP minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGP to public;
grant index  on TB_PUBGP to public;
grant update on TB_PUBGP to public; 
grant delete on TB_PUBGP to public;  
grant insert on TB_PUBGP to public; 
grant select on SEQ_TB_PUBGP to public;   