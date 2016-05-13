/*
================================================================================
表结构代码:TB_CCMDU
表结构名称:预存送券退回单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMDU;
drop index AK_TB_CCMDU;
drop table TB_CCMDU;
create table TB_CCMDU  (
   CCMDU_ID             INTEGER                         not null,  /*退回单ID            */
   CCMDU001             INTEGER                         not null,  /*单别ID              */
   CCMDU002             VARCHAR2(30)                    not null,  /*退回单号            */
   CCMDU003             DATE                            not null,  /*单据日期            */
   CCMDU004             INTEGER                         not null,  /*营运组织ID          */
   CCMDU005             INTEGER                         not null,  /*业务部门ID          */
   CCMDU006             INTEGER                         not null,  /*业务人员ID          */
   CCMDU007             VARCHAR2(30),                              /*客户姓名            */
   CCMDU008             VARCHAR2(30),				   /*联系电话            */
   CCMDU009             VARCHAR2(80),				   /*联系地址            */
   CCMDU010             INTEGER,				   /*小区ID              */
   CCMDU011             VARCHAR2(255),                             /*备注                */
   CCMDU012             INTEGER,                                   /*录入人ID            */
   CCMDU013             DATE,                                      /*录入日期            */
   CCMDU014             INTEGER,                                   /*审核人ID            */
   CCMDU015             DATE,                                      /*审核日期            */
   CCMDU016             VARCHAR2(1)                     not null,  /*审核状态            */
   CCMDU017             VARCHAR2(1),                               /*是否签核            */
   CCMDU018             VARCHAR2(30),                              /*签核单号            */
   CCMDU019             VARCHAR2(1),                               /*签核码              */
   CCMDU020             VARCHAR2(30),                              /*促销类型            */
   CCMDU021             INTEGER,                                   /*促销ID              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER,                                 /*资料状态            */
   constraint PK_TB_CCMDU primary key (CCMDU_ID)
);
create unique index AK_TB_CCMDU on TB_CCMDU (CCMDU002,CCMDU004);
create sequence SEQ_TB_CCMDU minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDU to public;
grant index  on TB_CCMDU to public;
grant update on TB_CCMDU to public; 
grant delete on TB_CCMDU to public;  
grant insert on TB_CCMDU to public; 
grant select on SEQ_TB_CCMDU to public;   