/*
================================================================================
表结构代码:TB_SUPAT
表结构名称:商户清场单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPAT;
drop index AK_TB_SUPAT;
drop table TB_SUPAT;
create table TB_SUPAT  (
   SUPAT_ID             INTEGER                         not null,  /*商户清场单ID        */
   SUPAT001             INTEGER                         not null,  /*单别ID              */
   SUPAT002             VARCHAR2(30)                    not null,  /*单据编号            */
   SUPAT003             DATE                            not null,  /*单据日期            */
   SUPAT004             INTEGER                         not null,  /*公司ID              */
   SUPAT005             INTEGER                         not null,  /*营运组织ID          */
   SUPAT006             INTEGER                         not null,  /*商户ID              */
   SUPAT007             VARCHAR2(1),                               /*是否已撤消          */
   SUPAT008             INTEGER                         not null,  /*清场原因ID          */
   SUPAT009             DATE                            not null,  /*离场日期            */
   SUPAT010             INTEGER                         not null,  /*业务部门ID          */
   SUPAT011             INTEGER                         not null,  /*业务人员ID          */
   SUPAT012             VARCHAR2(30),                              /*联系人              */
   SUPAT013             NUMBER(12,2),                              /*扣款金额            */
   SUPAT014             INTEGER                         not null,  /*费用代码ID          */
   SUPAT015             INTEGER,                                   /*费用单ID            */
   SUPAT016             VARCHAR2(500),                             /*备注                */
   SUPAT017             INTEGER,                                   /*录入人ID            */
   SUPAT018             DATE,                                      /*录入日期            */
   SUPAT019             INTEGER,                                   /*审核人ID            */
   SUPAT020             DATE,                                      /*审核日期            */
   SUPAT021             VARCHAR2(1)                     not null,  /*审核状态            */
   SUPAT022             VARCHAR2(1),                               /*是否签核            */
   SUPAT023             VARCHAR2(30),                              /*签核单号            */
   SUPAT024             VARCHAR2(1),                               /*签核码              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SUPAT primary key (SUPAT_ID)
);
create unique index AK_TB_SUPAT on TB_SUPAT (SUPAT002,SUPAT005);
create sequence SEQ_TB_SUPAT minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAT to public;
grant index  on TB_SUPAT to public;
grant update on TB_SUPAT to public; 
grant delete on TB_SUPAT to public;  
grant insert on TB_SUPAT to public; 
grant select on SEQ_TB_SUPAT to public;   