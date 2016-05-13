/*
================================================================================
表结构代码:TB_TAXAC
表结构名称:发票入库主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_TAXAC;
drop index AK_TB_TAXAC;
drop table TB_TAXAC;
create table TB_TAXAC  (
   TAXAC_ID             INTEGER                         not null,  /*发票入库单ID      */
   TAXAC001             INTEGER                         not null,  /*单别ID            */
   TAXAC002             VARCHAR2(30)                    not null,  /*入库单号          */
   TAXAC003             DATE                            not null,  /*单据日期          */
   TAXAC004             INTEGER                         not null,  /*公司ID            */
   TAXAC005             INTEGER                         not null,  /*营运组织ID        */
   TAXAC006             DATE                            not null,  /*购买日期          */
   TAXAC007             INTEGER                         not null,  /*业务部门ID        */
   TAXAC008             INTEGER                         not null,  /*业务人员ID        */
   TAXAC009             VARCHAR2(255),                             /*备注              */
   TAXAC010             INTEGER,                                   /*录入人ID          */
   TAXAC011             DATE,                                      /*录入日期          */
   TAXAC012             INTEGER,                                   /*审核人ID          */
   TAXAC013             DATE,                                      /*审核日期          */
   TAXAC014             VARCHAR2(1)                     not null,  /*审核状态          */
   TAXAC015             VARCHAR2(1),                               /*是否签核          */
   TAXAC016             VARCHAR2(30),                              /*签核单号          */
   TAXAC017             VARCHAR2(1),                               /*签核码            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_TAXAC primary key (TAXAC_ID)
);
create unique index AK_TB_TAXAC on TB_TAXAC (TAXAC002,TAXAC005);
create sequence SEQ_TB_TAXAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_TAXAC to public;
grant index  on TB_TAXAC to public;
grant update on TB_TAXAC to public; 
grant delete on TB_TAXAC to public;  
grant insert on TB_TAXAC to public; 
grant select on SEQ_TB_TAXAC to public;   