/*
================================================================================
表结构代码:TB_INVFG
表结构名称:盘点汇总单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVFG;
drop index AK_TB_INVFG;
drop table TB_INVFG;
create table TB_INVFG  (
   INVFG_ID         INTEGER               not null,       /*盘点汇总单ID     */
   INVFG001         INTEGER               not null,       /*盘点汇总单别     */
   INVFG002         VARCHAR2(30)          not null,       /*盘点汇总单号     */
   INVFG003         INTEGER               not null,       /*盘点计划单ID     */
   INVFG004         DATE                  not null,       /*盘点日期         */
   INVFG005         INTEGER               not null,       /*营运组织         */
   INVFG006         INTEGER               not null,       /*仓库         */
   INVFG007         INTEGER               not null,       /*货区         */
   INVFG008         INTEGER               not null,       /*货道         */
   INVFG009         INTEGER               not null,       /*货架         */
   INVFG010         INTEGER               not null,       /*货位         */
   INVFG011         INTEGER,                              /*汇总人         */
   INVFG012         DATE,                                 /*汇总日期         */
   INVFG013         VARCHAR2(1),                          /*审核状态         */
   INVFG014         INTEGER,                              /*录入人           */
   INVFG015         DATE,                                 /*录入时间         */
   INVFG016         INTEGER,                              /*审核人           */
   INVFG017         DATE,                                 /*审核时间         */
   CREATE_USER      VARCHAR2(12),                         /*建立人员           */
   USER_GROUP       VARCHAR2(12),                         /*建立人员部门       */                               
   CREATE_DATE      DATE,                                 /*建立日期           */
   MODIFIER         VARCHAR2(12),                         /*修改人员           */
   MODI_DATE        DATE,                                 /*修改日期           */
   FLAG             NUMBER(1),                            /*资料状态           */
   constraint PK_TB_INVFG primary key (INVFG_ID)
);
create unique index AK_TB_INVFG on TB_INVFG (INVFG002, INVFG005);
create sequence SEQ_TB_INVFG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVFG to public;
grant index  on TB_INVFG to public;
grant update on TB_INVFG to public; 
grant delete on TB_INVFG to public;  
grant insert on TB_INVFG to public; 
grant select on SEQ_TB_INVFG to public;   