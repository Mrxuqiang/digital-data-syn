/*
================================================================================
表结构代码:TB_SEREC
表结构名称:赠品入库主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SEREC;
drop index AK_TB_SEREC;
drop table TB_SEREC;
create table TB_SEREC  (
   SEREC_ID             INTEGER                         not null,  /*赠品入库单ID        */
   SEREC001             INTEGER                         not null,  /*单别ID              */
   SEREC002             VARCHAR2(30)                    not null,  /*入库单号            */
   SEREC003             DATE                            not null,  /*单据日期            */
   SEREC004             INTEGER                         not null,  /*营运组织ID          */
   SEREC005             INTEGER                         not null,  /*入库部门ID          */
   SEREC006             INTEGER                         not null,  /*入库人员ID          */
   SEREC007             DATE                            not null,  /*入库日期            */
   SEREC008             VARCHAR2(255),                             /*备注                */
   SEREC009             INTEGER,                                   /*录入人ID            */
   SEREC010             DATE,                                      /*录入日期            */
   SEREC011             INTEGER,                                   /*审核人ID            */
   SEREC012             DATE,                                      /*审核日期            */
   SEREC013             VARCHAR2(1)                     not null,  /*审核状态            */
   SEREC014             VARCHAR2(1),                               /*是否签核            */
   SEREC015             VARCHAR2(30),                              /*签核单号            */
   SEREC016             VARCHAR2(1),                               /*签核码              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SEREC primary key (SEREC_ID)
);
create unique index AK_TB_SEREC on TB_SEREC (SEREC002,SEREC004);
create sequence SEQ_TB_SEREC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEREC to public;
grant index  on TB_SEREC to public;
grant update on TB_SEREC to public; 
grant delete on TB_SEREC to public;  
grant insert on TB_SEREC to public; 
grant select on SEQ_TB_SEREC to public;   