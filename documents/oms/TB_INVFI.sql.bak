/*
================================================================================
表结构代码:TB_INVFI
表结构名称:盘差调整单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVFI;
drop index AK_TB_INVFI;
drop table TB_INVFI;
create table TB_INVFI  (
   INVFI_ID         INTEGER                 not null,             /*盘差调整单主表ID         */          
   INVFI001         INTEGER                 not null,             /*盘差调整单别         */          
   INVFI002         VARCHAR2(30)            not null,             /*盘差调整单号         */          
   INVFI003         INTEGER                 not null,             /*差异表ID           */          
   INVFI004         DATE                    not null,             /*盘点日期             */          
   INVFI005         INTEGER                 not null,             /*组织             */          
   INVFI006         INTEGER                 not null,             /*仓库             */          
   INVFI007         INTEGER                 not null,             /*货区             */          
   INVFI008         INTEGER                 not null,             /*货道             */          
   INVFI009         INTEGER                 not null,             /*货架             */          
   INVFI010         INTEGER                 not null,             /*货位             */          
   INVFI011         DATE,                                         /*录入时间             */          
   INVFI012         VARCHAR2(1),                                  /*审核状态             */          
   INVFI013         INTEGER,                                      /*录入人               */          
   INVFI014         DATE,                                         /*录入时间             */          
   INVFI015         INTEGER,                                      /*审核人               */          
   INVFI016         DATE,                                         /*审核时间             */  
   INVFI017         VARCHAR2(4),                          /*版本号           */
   INVFI018         INTEGER,                              /*制表人         */
   INVFI019         DATE,                                 /*汇总日期         */
   CREATE_USER      VARCHAR2(12),                                 /*建立人员           */
   USER_GROUP       VARCHAR2(12),                                 /*建立人员部门       */                               
   CREATE_DATE      DATE,                                         /*建立日期           */
   MODIFIER         VARCHAR2(12),                                 /*修改人员           */
   MODI_DATE        DATE,                                         /*修改日期           */
   FLAG             NUMBER(1),                                    /*资料状态           */
   constraint PK_TB_INVFI primary key (INVFI_ID)
);
create unique index AK_TB_INVFI on TB_INVFI (INVFI002, INVFI005);
create sequence SEQ_TB_INVFI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVFI to public;
grant index  on TB_INVFI to public;
grant update on TB_INVFI to public; 
grant delete on TB_INVFI to public;  
grant insert on TB_INVFI to public; 
grant select on SEQ_TB_INVFI to public;   