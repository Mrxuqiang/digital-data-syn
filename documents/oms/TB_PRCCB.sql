/*
================================================================================
表结构代码:TB_PRCCB
表结构名称:价格策略调整标准售价子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PRCCB;
drop index AK_TB_PRCCB;
drop table TB_PRCCB;
create table TB_PRCCB  (
   PRCCB_ID             INTEGER                         not null,  /*价格策略调整标准售价ID*/
   PRCCB001             INTEGER                         not null,  /*价格策略调整单头ID*/
   PRCCB002             INTEGER                         not null,  /*商品ID            */
   PRCCB003             VARCHAR2(1)                     not null,  /*零售价参考基准    */ -- update by wd 备用字段
   PRCCB004             NUMBER(12,2)                    not null,  /*零售价参考价      */ -- 原标准售价
   PRCCB005             NUMBER(5,3)                     not null,  /*零售价浮动比率    */ -- 标准售价浮动比率
   PRCCB006             NUMBER(12,2)                    not null,  /*零售价            */ -- 标准售价
   PRCCB007             VARCHAR2(1)                     not null,  /*最低价参考基准    */ -- update by wd 备用字段
   PRCCB008             NUMBER(12,2)                    not null,  /*最低价参考价      */ -- 原最低售价
   PRCCB009             NUMBER(5,3)                     not null,  /*最低价浮动比率    */ -- 最低售价浮动比率
   PRCCB010             NUMBER(12,2)                    not null,  /*最低价            */ -- 最低售价
   PRCCB011             VARCHAR2(1),                               /*允许POS手动修改   */ -- update by wd 备用字段
   PRCCB012             VARCHAR2(1),                               /*有效否            */
   PRCCB013             INTEGER                                    /*原策略售价ID      */
   PRCCB014             NUMBER(12,2),                              /*原样品最低价        */
   PRCCB015             NUMBER(12,2)                    not null,  /*原最低折扣          */
   PRCCB016             NUMBER(12,2)                    not null,  /*原样品最低折扣      */
   PRCCB017             NUMBER(12,2),                              /*样品最低价        */
   PRCCB018             NUMBER(12,2)                    not null,  /*最低折扣          */
   PRCCB019             NUMBER(12,2)                    not null,  /*样品最低折扣      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PRCCB primary key (PRCCB_ID)
);
create unique index AK_TB_PRCCB on TB_PRCCB (PRCCB001,PRCCB002);
create sequence SEQ_TB_PRCCB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCCB to public;
grant index  on TB_PRCCB to public;
grant update on TB_PRCCB to public; 
grant delete on TB_PRCCB to public;  
grant insert on TB_PRCCB to public; 
grant select on SEQ_TB_PRCCB to public;   