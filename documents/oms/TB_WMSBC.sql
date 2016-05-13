/*
================================================================================
表结构代码:TB_WMSBC
表结构名称:维修通知单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_WMSBC;
drop index AK_TB_WMSBC;
drop table TB_WMSBC;
create table TB_WMSBC  (
   WMSBC_ID             INTEGER                         not null,  /*维修通知单ID       */
   WMSBC001             INTEGER                         not null,  /*单别ID             */
   WMSBC002             VARCHAR2(30)                    not null,  /*维修通知单号       */
   WMSBC003             INTEGER,                                   /*营运组织           */
   WMSBC004             INTEGER,                                   /*维修人员           */
   WMSBC005             INTEGER,                                   /*货主               */
   WMSBC006             INTEGER,                                   /*维修商品来源仓库   */
   WMSBC007             DATE,                                      /*预计维修完成时间   */
   WMSBC008             NUMBER(12,3),                              /*费用               */
   WMSBC009             INTEGER,                                   /*录入人ID           */
   WMSBC010             DATE,                                      /*录入日期           */
   WMSBC011             INTEGER,                                   /*审核人ID           */
   WMSBC012             DATE,                                      /*审核日期           */
   WMSBC013             VARCHAR2(1)                      not null, /*审核状态           */   
   WMSBC014             VARCHAR2(1)                      not null, /*结案状态           */   
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_WMSBC primary key (WMSBC_ID)
);
create unique index AK_TB_WMSBC on TB_WMSBC (WMSBC001);
create sequence SEQ_TB_WMSBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_WMSBC to public;
grant index  on TB_WMSBC to public;
grant update on TB_WMSBC to public; 
grant delete on TB_WMSBC to public;  
grant insert on TB_WMSBC to public; 
grant select on SEQ_TB_WMSBC to public;   