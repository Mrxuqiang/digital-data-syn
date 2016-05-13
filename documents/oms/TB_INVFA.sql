/*
================================================================================
表结构代码:TB_INVFA
表结构名称:盘点计划表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVFA;
drop index AK_TB_INVFA;
drop table TB_INVFA;
create table TB_INVFA  (
   INVFA_ID         INTEGER                not null,          /*盘点计划ID        */
   INVFA001         INTEGER                not null,          /*盘点计划单别      */
   INVFA002         VARCHAR2(30)           not null,          /*盘点计划单号      */
   INVFA003         DATE                   not null,          /*盘点日期          */
   INVFA004         INTEGER                not null,          /*盘点组织          */
   INVFA005         INTEGER                           ,          /*盘点仓库          */
   INVFA006         INTEGER                           ,          /*盘点货区          */
   INVFA007         INTEGER                           ,          /*盘点货道          */
   INVFA008         INTEGER                           ,          /*盘点货架          */
   INVFA009         INTEGER                           ,          /*盘点货位          */
   INVFA010         VARCHAR2(1),            not null,         /*镜像方式  1，日结，2，及时生成 3.手动 */ 
   INVFA011         VARCHAR2(1),            not null,         /*盘点方式  */ 
   INVFA012         VARCHAR2(1),                              /*大类启用          */
   INVFA013         VARCHAR2(255),                                  /*大类ID            */
   INVFA014         VARCHAR2(255),                                  /*大类名称          */
   INVFA015         VARCHAR2(1),                              /*厂商启动          */
   INVFA016         VARCHAR2(255),                                /*厂商ID            */
   INVFA017         VARCHAR2(255),                                /*厂商名称            */
   INVFA018         VARCHAR2(1),                              /*品牌启动          */
   INVFA019         VARCHAR2(255),                                /*品牌ID            */
   INVFA020         VARCHAR2(255),                                 /*品牌名称            */
   INVFA021         VARCHAR2(1),                              /*商品启动          */
   INVFA022         VARCHAR2(255),                                  /*商品ID            */
   INVFA023         VARCHAR2(255),                                  /*商品名称            */
   INVFA024         VARCHAR2(1),            not null,         /*审核状态          */
   INVFA025         INTEGER,                                  /*录入人            */
   INVFA026         DATE,                                     /*录入时间          */
   INVFA027         INTEGER,                                  /*审核人            */
   INVFA028         DATE,                                     /*审核时间          */
   OAID             VARCHAR2(200),                            /*OA流程ID          */
   OAGROUP          VARCHAR2(200),                            /*OA流程组          */
   OANOTE           VARCHAR2(200),                            /*OA备注            */
   OASPARE1         VARCHAR2(200),                            /*OA备用            */
   OASPARE2         VARCHAR2(200),                            /*OA备用            */
   CREATE_USER      VARCHAR2(12),                             /*建立人员          */
   USER_GROUP       VARCHAR2(12),                             /*建立人员部门      */                               
   CREATE_DATE      DATE,                                     /*建立日期          */
   MODIFIER         VARCHAR2(12),                             /*修改人员          */
   MODI_DATE        DATE,                                     /*修改日期          */
   FLAG             NUMBER(1),                                /*资料状态          */
   constraint PK_TB_INVFA primary key (INVFA_ID)
);
create unique index AK_TB_INVFA on TB_INVFA (INVFA002,INVFA004);
create sequence SEQ_TB_INVFA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVFA to public;
grant index  on TB_INVFA to public;
grant update on TB_INVFA to public; 
grant delete on TB_INVFA to public;  
grant insert on TB_INVFA to public; 
grant select on SEQ_TB_INVFA to public;   