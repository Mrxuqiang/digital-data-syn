/*
================================================================================
表结构代码:TB_PRCBB
表结构名称:售价调整标准售价子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PRCBB;
drop index AK_TB_PRCBB;
drop table TB_PRCBB;
create table TB_PRCBB  (
   PRCBB_ID             INTEGER                         not null,  /*售价调整标准售价ID*/
   PRCBB001             INTEGER                         not null,  /*售价调整单头ID    */
   PRCBB002             INTEGER                         not null,  /*商品ID            */
   PRCBB003             VARCHAR2(1)                     not null,  /*零售价参考基准    */
   PRCBB004             NUMBER(12,2)                    not null,  /*零售价参考价      */
   PRCBB005             NUMBER(5,3)                     not null,  /*零售价浮动比率    */
   PRCBB006             NUMBER(12,2)                    not null,  /*零售价            */
   PRCBB007             VARCHAR2(1)                     not null,  /*最低价参考基准    */
   PRCBB008             NUMBER(12,2)                    not null,  /*最低价参考价      */
   PRCBB009             NUMBER(5,3)                     not null,  /*最低价浮动比率    */
   PRCBB010             NUMBER(12,2)                    not null,  /*最低价            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PRCBB primary key (PRCBB_ID)
);
create unique index AK_TB_PRCBB on TB_PRCBB (PRCBB001,PRCBB002);
create sequence SEQ_TB_PRCBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCBB to public;
grant index  on TB_PRCBB to public;
grant update on TB_PRCBB to public; 
grant delete on TB_PRCBB to public;  
grant insert on TB_PRCBB to public; 
grant select on SEQ_TB_PRCBB to public;   