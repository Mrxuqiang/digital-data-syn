/*
================================================================================
表结构代码:TB_MEDCD
表结构名称:媒体合同跟踪单表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_MEDCD;
drop index AK_TB_MEDCD;
drop table TB_MEDCD;
create table TB_MEDCD  (
   MEDCD_ID             INTEGER                         not null,  /*媒体合同跟踪单ID    */
   MEDCD001             INTEGER                         not null,  /*单别                */
   MEDCD002             VARCHAR2(30)                    not null,  /*跟踪单号            */
   MEDCD003             DATE                            not null,  /*单据日期            */
   MEDCD004             INTEGER                         not null,  /*营运组织ID          */
   MEDCD005             INTEGER                         not null,  /*媒体合同号ID        */
   MEDCD006             NUMBER(12,2),                              /*扣款金额            */
   MEDCD007             INTEGER                         not null,  /*业务部门ID          */
   MEDCD008             INTEGER                         not null,  /*业务人员ID          */
   MEDCD009             VARCHAR2(255),                             /*备注                */
   MEDCD010             INTEGER,                                   /*录入ID              */
   MEDCD011             DATE,                                      /*录入日期            */
   MEDCD012             INTEGER,                                   /*审核ID              */
   MEDCD013             DATE,                                      /*审核日期            */
   MEDCD014             VARCHAR2(1)                     not null,  /*审核状态            */
   MEDCD015             VARCHAR2(1),                               /*是否签核            */
   MEDCD016             VARCHAR2(30),                              /*签核单号            */
   MEDCD017             VARCHAR2(1),                               /*签核码              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_MEDCD primary key (MEDCD_ID)
);
create unique index AK_TB_MEDCD on TB_MEDCD (MEDCD002,MEDCD004);
create sequence SEQ_TB_MEDCD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEDCD to public;
grant index  on TB_MEDCD to public;
grant update on TB_MEDCD to public; 
grant delete on TB_MEDCD to public;  
grant insert on TB_MEDCD to public; 
grant select on SEQ_TB_MEDCD to public;   