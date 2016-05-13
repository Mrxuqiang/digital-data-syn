/*
================================================================================
表结构代码:TB_CCMBG
表结构名称:白卡开卡主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMBG;
drop index AK_TB_CCMBG;
drop table TB_CCMBG;
create table TB_CCMBG  (
   CCMBG_ID             INTEGER                         not null,  /*白卡开卡单ID        */
   CCMBG001             INTEGER                         not null,  /*单别ID              */
   CCMBG002             VARCHAR2(30)                    not null,  /*开卡单号            */
   CCMBG003             DATE                            not null,  /*单据日期            */
   CCMBG004             INTEGER                         not null,  /*营运组织ID          */
   CCMBG005             INTEGER                         not null,  /*开卡部门ID          */
   CCMBG006             INTEGER                         not null,  /*开卡人员ID          */
   CCMBG007             DATE                            not null,  /*开卡日期            */
   CCMBG008             VARCHAR2(255),                             /*备注                */
   CCMBG009             INTEGER,                                   /*录入人ID            */
   CCMBG010             DATE,                                      /*录入日期            */
   CCMBG011             INTEGER,                                   /*审核人ID            */
   CCMBG012             DATE,                                      /*审核日期            */
   CCMBG013             VARCHAR2(1)                     not null,  /*审核状态            */
   CCMBG014             VARCHAR2(1),                               /*是否签核            */
   CCMBG015             VARCHAR2(30),                              /*签核单号            */
   CCMBG016             VARCHAR2(1),                               /*签核码              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMBG primary key (CCMBG_ID)
);
create unique index AK_TB_CCMBG on TB_CCMBG (CCMBG002);
create sequence SEQ_TB_CCMBG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMBG to public;
grant index  on TB_CCMBG to public;
grant update on TB_CCMBG to public; 
grant delete on TB_CCMBG to public;  
grant insert on TB_CCMBG to public; 
grant select on SEQ_TB_CCMBG to public;   