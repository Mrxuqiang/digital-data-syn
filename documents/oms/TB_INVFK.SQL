/*
================================================================================
表结构代码:TB_INVFK
表结构名称:盘点差异主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVFK;
drop index AK_TB_INVFK;
drop table TB_INVFK;
create table TB_INVFK  (
   INVFK_ID         INTEGER               not null,       /*盘点差异单ID     */
   INVFK001         INTEGER               not null,       /*单别     */
   INVFK002         VARCHAR2(30)          not null,       /*盘点差异单号     */
   INVFK003         INTEGER               not null,       /*盘点汇总单ID     */
   INVFK004         DATE                  not null,       /*盘点日期         */
   INVFK005         INTEGER               not null,       /*营运组织         */
   INVFK006         INTEGER               not null,       /*仓库         */
   INVFK007         INTEGER               not null,       /*货区         */
   INVFK008         INTEGER               not null,       /*货道         */
   INVFK009         INTEGER               not null,       /*货架         */
   INVFK010         INTEGER               not null,       /*货位         */
   INVFK011         INTEGER,                              /*制表人         */
   INVFK012         DATE,                                 /*汇总日期         */
   INVFK013         VARCHAR2(1),                          /*审核状态         */
   INVFK014         INTEGER,                              /*录入人           */
   INVFK015         DATE,                                 /*录入时间         */
   INVFK016         INTEGER,                              /*审核人           */
   INVFK017         DATE,                                 /*审核时间         */
   CREATE_USER      VARCHAR2(12),                         /*建立人员           */
   USER_GROUP       VARCHAR2(12),                         /*建立人员部门       */                               
   CREATE_DATE      DATE,                                 /*建立日期           */
   MODIFIER         VARCHAR2(12),                         /*修改人员           */
   MODI_DATE        DATE,                                 /*修改日期           */
   FLAG             NUMBER(1),                            /*资料状态           */
   constraint PK_TB_INVFK primary key (INVFK_ID)
);
create unique index AK_TB_INVFK on TB_INVFK (INVFK002, INVFK005);
create sequence SEQ_TB_INVFK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVFK to public;
grant index  on TB_INVFK to public;
grant update on TB_INVFK to public; 
grant delete on TB_INVFK to public;  
grant insert on TB_INVFK to public; 
grant select on SEQ_TB_INVFK to public;   