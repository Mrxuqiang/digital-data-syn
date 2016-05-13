/*
================================================================================
表结构代码:TB_CONGA
表结构名称:品类引进协议主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONGA;
drop index AK_TB_CONGA;
drop table TB_CONGA;
create table TB_CONGA  (
   CONGA_ID             INTEGER                         not null,  /*协议ID              */
   CONGA001             VARCHAR2(30)                    not null,  /*协议编号            */
   CONGA002             NUMBER(5)                       not null,  /*协议版本号          */
   CONGA003             VARCHAR2(1)                     not null,  /*协议类型            */
   CONGA004             INTEGER                         not null,  /*合同ID              */
   CONGA005             INTEGER                         not null,  /*供应商ID            */
   CONGA006             INTEGER                         not null,  /*签约营运组织ID      */
   CONGA007             VARCHAR2(1)                     not null,  /*经营方式            */
   CONGA008             VARCHAR2(1)                     not null,  /*审核状态            */
   CONGA009             DATE,                                      /*终止日期            */
   CONGA010             NUMBER(5),                                 /*默认供货天数        */
   CONGA011             VARCHAR2(255),                             /*备注                */
   CONGA012             VARCHAR2(1),                               /*是否签核            */
   CONGA013             VARCHAR2(30),                              /*签核单号            */
   CONGA014             VARCHAR2(1),                               /*签核码              */
   CONGA015             INTEGER,                                   /*录入人ID            */
   CONGA016             DATE,                                      /*录入日期            */
   CONGA017             INTEGER,                                   /*审核人ID            */
   CONGA018             DATE,                                      /*审核日期            */
   CONGA019             VARCHAR2(30),                              /*合同号              */
   CONGA020             INTEGER,                                   /*默认税种            */  //modi by 20091020
   CONGA021             NUMBER(12,2),                              /*税率                */  //modi by 20091020
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONGA primary key (CONGA_ID)
);
create unique index AK_TB_CONGA on TB_CONGA (CONGA001);
create sequence SEQ_TB_CONGA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONGA to public;
grant index  on TB_CONGA to public;
grant update on TB_CONGA to public; 
grant delete on TB_CONGA to public;  
grant insert on TB_CONGA to public; 
grant select on SEQ_TB_CONGA to public;   