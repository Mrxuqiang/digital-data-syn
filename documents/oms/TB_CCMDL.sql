/*
================================================================================
表结构代码:TB_CCMDL
表结构名称:券作废单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMDL;
drop index AK_TB_CCMDL;
drop table TB_CCMDL;
create table TB_CCMDL  (
   CCMDL_ID             INTEGER                         not null,  /*券作废单ID          */
   CCMDL001             INTEGER                         not null,  /*单别ID              */
   CCMDL002             VARCHAR2(30)                    not null,  /*作废单号            */
   CCMDL003             DATE                            not null,  /*单据日期            */
   CCMDL004             INTEGER                         not null,  /*营运组织ID          */
   CCMDL005             INTEGER                         not null,  /*业务部门ID          */
   CCMDL006             INTEGER                         not null,  /*业务人员ID          */
   CCMDL007             DATE                            not null,  /*作废日期            */
   CCMDL008             VARCHAR2(255),                             /*备注                */
   CCMDL009             INTEGER,                                   /*录入人ID            */
   CCMDL010             DATE,                                      /*录入日期            */
   CCMDL011             INTEGER,                                   /*审核人ID            */
   CCMDL012             DATE,                                      /*审核日期            */
   CCMDL013             VARCHAR2(1)                     not null,  /*审核状态            */
   CCMDL014             VARCHAR2(1),                               /*是否签核            */
   CCMDL015             VARCHAR2(30),                              /*签核单号            */
   CCMDL016             VARCHAR2(1),                               /*签核码              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMDL primary key (CCMDL_ID)
);
create unique index AK_TB_CCMDL on TB_CCMDL (CCMDL002,CCMDL004);
create sequence SEQ_TB_CCMDL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDL to public;
grant index  on TB_CCMDL to public;
grant update on TB_CCMDL to public; 
grant delete on TB_CCMDL to public;  
grant insert on TB_CCMDL to public; 
grant select on SEQ_TB_CCMDL to public;   