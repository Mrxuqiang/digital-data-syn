/*
================================================================================
表结构代码:TB_SEREE
表结构名称:赠品领用主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SEREE;
drop index AK_TB_SEREE;
drop table TB_SEREE;
create table TB_SEREE  (
   SEREE_ID             INTEGER                         not null,  /*赠品领用单ID        */
   SEREE001             INTEGER                         not null,  /*单别ID              */
   SEREE002             VARCHAR2(30)                    not null,  /*领用单号            */
   SEREE003             DATE                            not null,  /*单据日期            */
   SEREE004             INTEGER                         not null,  /*营运组织ID          */
   SEREE005             INTEGER                         not null,  /*领用部门ID          */
   SEREE006             INTEGER                         not null,  /*领用人员ID          */
   SEREE007             DATE                            not null,  /*领用日期            */
   SEREE008             INTEGER                         not null,  /*出库部门ID          */
   SEREE009             INTEGER                         not null,  /*出库人员ID          */
   SEREE010             VARCHAR2(255),                             /*备注                */
   SEREE011             INTEGER,                                   /*录入人ID            */
   SEREE012             DATE,                                      /*录入日期            */
   SEREE013             INTEGER,                                   /*审核人ID            */
   SEREE014             DATE,                                      /*审核日期            */
   SEREE015             VARCHAR2(1)                     not null,  /*审核状态            */
   SEREE016             VARCHAR2(1),                               /*是否签核            */
   SEREE017             VARCHAR2(30),                              /*签核单号            */
   SEREE018             VARCHAR2(1),                               /*签核码              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SEREE primary key (SEREE_ID)
);
create unique index AK_TB_SEREE on TB_SEREE (SEREE002,SEREE004);
create sequence SEQ_TB_SEREE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEREE to public;
grant index  on TB_SEREE to public;
grant update on TB_SEREE to public; 
grant delete on TB_SEREE to public;  
grant insert on TB_SEREE to public; 
grant select on SEQ_TB_SEREE to public;   