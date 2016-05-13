/*
================================================================================
表结构代码:TB_PUBGT
表结构名称:客商分类表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBGT;
drop index AK_TB_PUBGT;
drop table TB_PUBGT;
create table TB_PUBGT  (
   PUBGT_ID             INTEGER                         not null,  /*客商分类ID         */
   PUBGT001             VARCHAR2(12)                    not null,  /*分类代码           */
   PUBGT002             VARCHAR2(30)                    not null,  /*分类名称           */
   PUBGT003             INTEGER,                                   /*上级分类ID         */
   PUBGT004             VARCHAR2(30),                              /*当前层级代码       */
   ISLASTLEV            VARCHAR2(1),                               /*是否末级           */
   LEVNUM               NUMBER(1),                                 /*层级               */ 
   PARCODE              VARCHAR2(40),                              /*父级代码           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBGT primary key (PUBGT_ID)
);
create unique index AK_TB_PUBGT on TB_PUBGT (PUBGT001);
create sequence SEQ_TB_PUBGT minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGT to public;
grant index  on TB_PUBGT to public;
grant update on TB_PUBGT to public; 
grant delete on TB_PUBGT to public;  
grant insert on TB_PUBGT to public; 
grant select on SEQ_TB_PUBGT to public;   