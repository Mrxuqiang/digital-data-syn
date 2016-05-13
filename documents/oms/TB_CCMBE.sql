/*
================================================================================
表结构代码:TB_CCMBE
表结构名称:白卡领退单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMBE;
drop index AK_TB_CCMBE;
drop table TB_CCMBE;
create table TB_CCMBE  (
   CCMBE_ID             INTEGER                         not null,  /*白卡领退单ID        */
   CCMBE001             INTEGER                         not null,  /*单别ID              */
   CCMBE002             VARCHAR2(30)                    not null,  /*领退单号            */
   CCMBE003             DATE                            not null,  /*单据日期            */
   CCMBE004             DATE                            not null,  /*领退日期            */
   CCMBE005             INTEGER                         not null,  /*领退营运组织ID      */
   CCMBE006             INTEGER                         not null,  /*领退部门ID          */
   CCMBE007             INTEGER                         not null,  /*领退人员ID          */
   CCMBE008             INTEGER                         not null,  /*接收营运组织ID      */
   CCMBE009             INTEGER                         not null,  /*接收部门ID          */
   CCMBE010             INTEGER                         not null,  /*接收人员ID          */
   CCMBE011             VARCHAR2(255),                             /*备注                */
   CCMBE012             INTEGER,                                   /*录入人ID            */
   CCMBE013             DATE,                                      /*录入日期            */
   CCMBE014             INTEGER,                                   /*审核人ID            */
   CCMBE015             DATE,                                      /*审核日期            */
   CCMBE016             VARCHAR2(1)                     not null,  /*审核状态            */
   CCMBE017             VARCHAR2(1),                               /*是否签核            */
   CCMBE018             VARCHAR2(30),                              /*签核单号            */
   CCMBE019             VARCHAR2(1),                               /*签核码              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMBE primary key (CCMBE_ID)
);
create unique index AK_TB_CCMBE on TB_CCMBE (CCMBE002);
create sequence SEQ_TB_CCMBE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMBE to public;
grant index  on TB_CCMBE to public;
grant update on TB_CCMBE to public; 
grant delete on TB_CCMBE to public;  
grant insert on TB_CCMBE to public; 
grant select on SEQ_TB_CCMBE to public;   