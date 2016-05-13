/*
================================================================================
表结构代码:TB_PURBA
表结构名称:要货单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PURBA;
drop index AK_TB_PURBA;
drop table TB_PURBA;
create table TB_PURBA  (
   PURBA_ID             INTEGER                         not null,  /*要货单ID            */
   PURBA001             INTEGER                         not null,  /*单别ID              */
   PURBA002             VARCHAR2(30)                    not null,  /*要货单号            */
   PURBA003             DATE                            not null,  /*要货日期            */
   PURBA004             VARCHAR2(1)                     not null,  /*单据来源            */ --1.手工录入 2.自动补货 3.销售订单 4.销售单 5.要货汇总单，6 补件申请
   PURBA005             INTEGER,                                   /*来源单号ID          */
   PURBA006             INTEGER                         not null,  /*要货营运组织ID      */
   PURBA007             INTEGER                         not null,  /*要货部门ID          */
   PURBA008             INTEGER                         not null,  /*要货人员ID          */
   PURBA009             VARCHAR2(80),                              /*送货地址            */
   PURBA010             VARCHAR2(255),                             /*备注                */
   PURBA011             VARCHAR2(1)                     not null,  /*结案码              */
   PURBA012             VARCHAR2(1)                     not null,  /*状态                */
   PURBA013             VARCHAR2(1),                               /*是否签核            */
   PURBA014             VARCHAR2(30),                              /*签核单号            */
   PURBA015             VARCHAR2(1),                               /*签核码              */
   PURBA016             INTEGER,                                   /*录入人ID            */
   PURBA017             DATE,                                      /*录入日期            */
   PURBA018             INTEGER,                                   /*审核人ID            */
   PURBA019             DATE,                                      /*审核日期            */
   PURBA020             INTEGER                                    /*指定采购            */
   PURBA025             INTEGER,                                   /*要货目标组织        */ --20110624 add by xiechun
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_PURBA primary key (PURBA_ID)
);
create unique index AK_TB_PURBA on TB_PURBA (PURBA002);
create sequence SEQ_TB_PURBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURBA to public;
grant index  on TB_PURBA to public;
grant update on TB_PURBA to public; 
grant delete on TB_PURBA to public;  
grant insert on TB_PURBA to public; 
grant select on SEQ_TB_PURBA to public;   