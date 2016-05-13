/*
================================================================================
表结构代码:TB_MEDCC
表结构名称:媒体合同请款单表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_MEDCC;
drop index AK_TB_MEDCC;
drop table TB_MEDCC;
create table TB_MEDCC  (
   MEDCC_ID             INTEGER                         not null,  /*媒体合同请款单ID    */
   MEDCC001             INTEGER                         not null,  /*单别                */
   MEDCC002             VARCHAR2(30)                    not null,  /*请款单号            */
   MEDCC003             DATE                            not null,  /*单据日期            */
   MEDCC004             INTEGER                         not null,  /*营运组织ID          */
   MEDCC005             INTEGER                         not null,  /*媒体合同号ID        */
   MEDCC006             NUMBER(12,2),                              /*请款金额            */
   MEDCC007             INTEGER                         not null,  /*请款部门ID          */
   MEDCC008             INTEGER                         not null,  /*请款人员ID          */
   MEDCC009             VARCHAR2(255),                             /*备注                */
   MEDCC010             INTEGER,                                   /*录入ID              */
   MEDCC011             DATE,                                      /*录入日期            */
   MEDCC012             INTEGER,                                   /*审核ID              */
   MEDCC013             DATE,                                      /*审核日期            */
   MEDCC014             VARCHAR2(1)                     not null,  /*审核状态            */
   MEDCC015             VARCHAR2(1),                               /*是否签核            */
   MEDCC016             VARCHAR2(30),                              /*签核单号            */
   MEDCC017             VARCHAR2(1),                               /*签核码              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_MEDCC primary key (MEDCC_ID)
);
create unique index AK_TB_MEDCC on TB_MEDCC (MEDCC002,MEDCC004);
create sequence SEQ_TB_MEDCC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEDCC to public;
grant index  on TB_MEDCC to public;
grant update on TB_MEDCC to public; 
grant delete on TB_MEDCC to public;  
grant insert on TB_MEDCC to public; 
grant select on SEQ_TB_MEDCC to public;   