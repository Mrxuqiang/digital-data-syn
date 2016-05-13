/*
================================================================================
表结构代码:TB_CONHA
表结构名称:协议调整单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONHA;
drop index AK_TB_CONHA;
drop table TB_CONHA;
create table TB_CONHA  (
   CONHA_ID             INTEGER                         not null,  /*协议调整单ID        */
   CONHA001             INTEGER                         not null,  /*单别                */
   CONHA002             VARCHAR2(16)                    not null,  /*调整单号            */
   CONHA003             DATE                            not null,  /*调整日期            */
   CONHA004             INTEGER                         not null,  /*协议ID              */
   CONHA005             NUMBER(5)                       not null,  /*协议版本号          */
   CONHA006             VARCHAR2(1)                     not null,  /*协议类型            */
   CONHA007             INTEGER                         not null,  /*合同ID              */
   CONHA008             INTEGER                         not null,  /*供应商ID            */
   CONHA009             INTEGER                         not null,  /*签约营运组织ID      */
   CONHA010             VARCHAR2(1)                     not null,  /*经营方式            */
   CONHA011             VARCHAR2(1)                     not null,  /*状态                */
   CONHA012             VARCHAR2(255),                             /*备注                */
   CONHA013             VARCHAR2(1),                               /*是否签核            */
   CONHA014             VARCHAR2(30),                              /*签核单号            */
   CONHA015             VARCHAR2(1),                               /*签核码              */
   CONHA016             INTEGER,                                   /*录入人ID            */
   CONHA017             DATE,                                      /*录入日期            */
   CONHA018             INTEGER,                                   /*审核人ID            */
   CONHA019             DATE,                                      /*审核日期            */
   CONHA020             INTEGER,                                   /*默认税种            */  //modi by 20091020
   CONHA021             NUMBER(12,2),                              /*税率                */  //modi by 20091020   
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONHA primary key (CONHA_ID)
);
create unique index AK_TB_CONHA on TB_CONHA (CONHA002);
create sequence SEQ_TB_CONHA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONHA to public;
grant index  on TB_CONHA to public;
grant update on TB_CONHA to public; 
grant delete on TB_CONHA to public;  
grant insert on TB_CONHA to public; 
grant select on SEQ_TB_CONHA to public;   