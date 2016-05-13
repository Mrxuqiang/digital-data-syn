/*
================================================================================
表结构代码:TB_CCMDN
表结构名称:预存送券单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMDN;
drop index AK_TB_CCMDN;
drop table TB_CCMDN;
create table TB_CCMDN  (
   CCMDN_ID             INTEGER                         not null,  /*预存单ID            */
   CCMDN001             INTEGER                         not null,  /*单别ID              */
   CCMDN002             VARCHAR2(30)                    not null,  /*预存单号            */
   CCMDN003             DATE                            not null,  /*单据日期            */
   CCMDN004             INTEGER                         not null,  /*营运组织ID          */
   CCMDN005             INTEGER                         not null,  /*业务部门ID          */
   CCMDN006             INTEGER                         not null,  /*业务人员ID          */
   CCMDN007             VARCHAR2(30),                              /*客户姓名            */
   CCMDN008             VARCHAR2(30),				   /*联系电话            */
   CCMDN009             VARCHAR2(80),				   /*联系地址            */
   CCMDN010             INTEGER,				   /*小区ID              */
   CCMDN011             VARCHAR2(255),                             /*备注                */
   CCMDN012             INTEGER,                                   /*录入人ID            */
   CCMDN013             DATE,                                      /*录入日期            */
   CCMDN014             INTEGER,                                   /*审核人ID            */
   CCMDN015             DATE,                                      /*审核日期            */
   CCMDN016             VARCHAR2(1)                     not null,  /*审核状态            */
   CCMDN017             VARCHAR2(1),                               /*是否签核            */
   CCMDN018             VARCHAR2(30),                              /*签核单号            */
   CCMDN019             VARCHAR2(1),                               /*签核码              */
   CCMDN020             VARCHAR2(30),                              /*促销类型            */
   CCMDN021             INTEGER,                                   /*促销ID              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER,                                 /*资料状态            */
   constraint PK_TB_CCMDN primary key (CCMDN_ID)
);
create unique index AK_TB_CCMDN on TB_CCMDN (CCMDN002,CCMDN004);
create sequence SEQ_TB_CCMDN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDN to public;
grant index  on TB_CCMDN to public;
grant update on TB_CCMDN to public; 
grant delete on TB_CCMDN to public;  
grant insert on TB_CCMDN to public; 
grant select on SEQ_TB_CCMDN to public;   