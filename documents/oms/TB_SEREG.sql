/*
================================================================================
表结构代码:TB_SEREG
表结构名称:赠品出库主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SEREG;
drop index AK_TB_SEREG;
drop table TB_SEREG;
create table TB_SEREG  (
   SEREG_ID             INTEGER                         not null,  /*赠品出库单ID        */
   SEREG001             INTEGER                         not null,  /*单别ID              */
   SEREG002             VARCHAR2(30)                    not null,  /*出库单号            */
   SEREG003             DATE                            not null,  /*单据日期            */
   SEREG004             INTEGER                         not null,  /*营运组织ID          */
   SEREG005             INTEGER                         not null,  /*出库部门ID          */
   SEREG006             INTEGER                         not null,  /*出库人员ID          */
   SEREG007             DATE                            not null,  /*出库日期            */
   SEREG008             VARCHAR2(255),                             /*备注                */
   SEREG009             INTEGER,                                   /*录入人ID            */
   SEREG010             DATE,                                      /*录入日期            */
   SEREG011             INTEGER,                                   /*审核人ID            */
   SEREG012             DATE,                                      /*审核日期            */
   SEREG013             VARCHAR2(1)                     not null,  /*审核状态            */
   SEREG014             VARCHAR2(1),                               /*是否签核            */
   SEREG015             VARCHAR2(30),                              /*签核单号            */
   SEREG016             VARCHAR2(1),                               /*签核码              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SEREG primary key (SEREG_ID)
);
create unique index AK_TB_SEREG on TB_SEREG (SEREG002,SEREG004);
create sequence SEQ_TB_SEREG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEREG to public;
grant index  on TB_SEREG to public;
grant update on TB_SEREG to public; 
grant delete on TB_SEREG to public;  
grant insert on TB_SEREG to public; 
grant select on SEQ_TB_SEREG to public;   