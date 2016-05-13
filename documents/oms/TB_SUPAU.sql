/*
================================================================================
表结构代码:TB_SUPAU
表结构名称:商户清场撤消单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPAU;
drop index AK_TB_SUPAU;
drop table TB_SUPAU;
create table TB_SUPAU  (
   SUPAU_ID             INTEGER                         not null,  /*清场撤消单ID        */
   SUPAU001             INTEGER                         not null,  /*单号ID              */
   SUPAU002             VARCHAR2(30)                    not null,  /*撤消单号            */
   SUPAU003             DATE                            not null,  /*单据日期            */
   SUPAU004             INTEGER                         not null,  /*公司ID              */
   SUPAU005             INTEGER                         not null,  /*营运组织ID          */
   SUPAU006             INTEGER                         not null,  /*商户ID              */
   SUPAU007             INTEGER                         not null,  /*商户清场单ID        */
   SUPAU008             INTEGER                         not null,  /*撤消原因ID          */
   SUPAU009             DATE                            not null,  /*撤消日期            */
   SUPAU010             INTEGER                         not null,  /*业务部门ID          */
   SUPAU011             INTEGER                         not null,  /*业务人员ID          */
   SUPAU012             VARCHAR2(30),                              /*联系人              */
   SUPAU013             VARCHAR2(500),                             /*备注                */
   SUPAU014             INTEGER,                                   /*录入人ID            */
   SUPAU015             DATE,                                      /*录入日期            */
   SUPAU016             INTEGER,                                   /*审核人ID            */
   SUPAU017             DATE,                                      /*审核日期            */
   SUPAU018             VARCHAR2(1)                     not null,  /*审核状态            */
   SUPAU019             VARCHAR2(1),                               /*是否签核            */
   SUPAU020             VARCHAR2(30),                              /*签核单号            */
   SUPAU021             VARCHAR2(1),                               /*签核码              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SUPAU primary key (SUPAU_ID)
);
create unique index AK_TB_SUPAU on TB_SUPAU (SUPAU002,SUPAU005);
create sequence SEQ_TB_SUPAU minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAU to public;
grant index  on TB_SUPAU to public;
grant update on TB_SUPAU to public; 
grant delete on TB_SUPAU to public;  
grant insert on TB_SUPAU to public; 
grant select on SEQ_TB_SUPAU to public;   