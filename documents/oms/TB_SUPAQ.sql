/*
================================================================================
表结构代码:TB_SUPAQ
表结构名称:预租协议单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPAQ;
drop index AK_TB_SUPAQ;
drop table TB_SUPAQ;
create table TB_SUPAQ  (
   SUPAQ_ID             INTEGER                         not null,  /*预租协议单ID        */
   SUPAQ001             INTEGER                         not null,  /*单别                */
   SUPAQ002             VARCHAR2(30)                    not null,  /*预租单号            */
   SUPAQ003             DATE                            not null,  /*单据日期            */
   SUPAQ004             INTEGER                         not null,  /*公司ID              */
   SUPAQ005             INTEGER                         not null,  /*营运组织ID          */
   SUPAQ006             INTEGER                         not null,  /*商户ID              */
   SUPAQ007             INTEGER,                                   /*摊位ID              */
   SUPAQ008             DATE                            not null,  /*签订日期            */
   SUPAQ009             INTEGER                         not null,  /*业务部门ID          */
   SUPAQ010             INTEGER                         not null,  /*业务人员ID          */
   SUPAQ011             VARCHAR2(30)                    not null,  /*签约人              */
   SUPAQ012             NUMBER(12,2)                    not null,  /*预收金额            */
   SUPAQ013             INTEGER,                                   /*费用单ID            */
   SUPAQ014             VARCHAR2(500),                             /*协议内容            */
   SUPAQ015             INTEGER                         not null,  /*费用码ID            */
   SUPAQ016             INTEGER,                                   /*录入ID              */
   SUPAQ017             DATE,                                      /*录入日期            */
   SUPAQ018             INTEGER,                                   /*审核ID              */
   SUPAQ019             DATE,                                      /*审核日期            */
   SUPAQ020             VARCHAR2(1)                     not null,  /*审核状态            */
   SUPAQ021             VARCHAR2(1),                               /*是否签核            */
   SUPAQ022             VARCHAR2(30),                              /*签核单号            */
   SUPAQ023             VARCHAR2(1),                               /*签核码              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SUPAQ primary key (SUPAQ_ID)
);
create unique index AK_TB_SUPAQ on TB_SUPAQ (SUPAQ002,SUPAQ005);
create sequence SEQ_TB_SUPAQ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAQ to public;
grant index  on TB_SUPAQ to public;
grant update on TB_SUPAQ to public; 
grant delete on TB_SUPAQ to public;  
grant insert on TB_SUPAQ to public; 
grant select on SEQ_TB_SUPAQ to public;   