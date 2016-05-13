/*
================================================================================
表结构代码:TB_INVFB
表结构名称:空白盘点主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVFB;
drop index AK_TB_INVFB;
drop table TB_INVFB;
create table TB_INVFB  (
   INVFB_ID         INTEGER                    not null,           /*盘点表ID        */
   INVFB001         INTEGER                    not null,           /*盘点表单别      */
   INVFB002         VARCHAR2(30)               not null,           /*盘点表单号      */
   INVFB003         INTEGER                    not null,           /*盘点计划单号    */
   INVFB004         DATE                       not null,           /*盘点日期        */
   INVFB005         INTEGER                    not null,           /*盘点组织        */
   INVFB006         INTEGER                    not null,           /*盘点仓库        */
   INVFB007        VARCHAR2(255),                                       /*盘点库位ID*/
   INVFB007C1    VARCHAR2(255),                                       /*盘点库位名称        */
   INVFB008        VARCHAR2(255),                                       /*大类ID          */
   INVFB008C1     VARCHAR2(255),                                       /*大类名称          */
   INVFB009        VARCHAR2(255),                                     /*厂商ID          */
   INVFB009C1     VARCHAR2(255),                                     /*厂商名称          */
   INVFB010          VARCHAR2(255),                                   /*品牌ID          */
  INVFB010C1       VARCHAR2(255),                                   /*品牌名称          */
   INVFB011         INTEGER,                                       /*盘点人ID        */
   CREATE_USER      VARCHAR2(12),                                  /*建立人员        */
   USER_GROUP       VARCHAR2(12),                                  /*建立人员部门    */                               
   CREATE_DATE      DATE,                                          /*建立日期        */
   MODIFIER         VARCHAR2(12),                                  /*修改人员        */
   MODI_DATE        DATE,                                          /*修改日期        */
   FLAG             NUMBER(1),                                     /*资料状态        */
   constraint PK_TB_INVFB primary key (INVFB_ID)
);
create unique index AK_TB_INVFB on TB_INVFB (INVFB_ID,INVFB001, INVFB002,INVFB003);
create sequence SEQ_TB_INVFB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVFB to public;
grant index  on TB_INVFB to public;
grant update on TB_INVFB to public; 
grant delete on TB_INVFB to public;  
grant insert on TB_INVFB to public; 
grant select on SEQ_TB_INVFB to public;   