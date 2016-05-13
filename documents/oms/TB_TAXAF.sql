/*
================================================================================
表结构代码:TB_TAXAF
表结构名称:发票作废主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_TAXAF;
drop index AK_TB_TAXAF;
drop table TB_TAXAF;
create table TB_TAXAF  (
   TAXAF_ID             INTEGER                         not null,  /*发票作废单ID      */
   TAXAF001             INTEGER                         not null,  /*单别ID            */
   TAXAF002             VARCHAR2(30)                    not null,  /*作废单号          */
   TAXAF003             DATE                            not null,  /*单据日期          */
   TAXAF004             INTEGER                         not null,  /*公司ID            */
   TAXAF005             INTEGER                         not null,  /*营运组织ID        */
   TAXAF006             DATE                            not null,  /*作废日期          */
   TAXAF007             INTEGER                         not null,  /*业务部门ID        */
   TAXAF008             INTEGER                         not null,  /*业务人员ID        */
   TAXAF009             VARCHAR2(255),                             /*备注              */
   TAXAF010             INTEGER,                                   /*录入人ID          */
   TAXAF011             DATE,                                      /*录入日期          */
   TAXAF012             INTEGER,                                   /*审核人ID          */
   TAXAF013             DATE,                                      /*审核日期          */
   TAXAF014             VARCHAR2(1)                     not null,  /*审核状态          */
   TAXAF015             VARCHAR2(1),                               /*是否签核          */
   TAXAF016             VARCHAR2(30),                              /*签核单号          */
   TAXAF017             VARCHAR2(1),                               /*签核码            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_TAXAF primary key (TAXAF_ID)
);
create unique index AK_TB_TAXAF on TB_TAXAF (TAXAF002,TAXAF005);
create sequence SEQ_TB_TAXAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_TAXAF to public;
grant index  on TB_TAXAF to public;
grant update on TB_TAXAF to public; 
grant delete on TB_TAXAF to public;  
grant insert on TB_TAXAF to public; 
grant select on SEQ_TB_TAXAF to public;   