/*
================================================================================
表结构代码:TB_PRCAB
表结构名称:价格策略标准售价表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PRCAB;
drop index AK_TB_PRCAB;
drop table TB_PRCAB;
create table TB_PRCAB  (
   PRCAB_ID             INTEGER                         not null,  /*价格策略标准售价ID*/
   PRCAB001             INTEGER                         not null,  /*价格策略ID        */
   PRCAB002             INTEGER                         not null,  /*商品ID            */
   PRCAB003             NUMBER(12,2)                    not null,  /*零售价            */
   PRCAB004             NUMBER(12,2)                    not null,  /*最低价            */
   PRCAB005             VARCHAR2(1),                               /*是否可调价        */
   PRCAB006             VARCHAR2(1),                               /*有效否            */
   PRCAB007             NUMBER(12,2)                               /*样品最低价        */
   PRCAB008             NUMBER(12,2)                            ,  /*最低折扣          */
   PRCAB009             NUMBER(12,2)                            ,  /*样品最低折扣      */
   PRCAB010             NUMBER(12,2)                  ,            /*含税进价          */
   PRCAB011             VARCHAR2(1),                               /*是否可定          */--20110805 add by xiechun
   PRCAB012             VARCHAR2(1),                               /*是否可售          */--20110805 add by xiechun
   PRCAB013             VARCHAR2(1),                               /*是否可退          */--20110805 add by xiechun
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PRCAB primary key (PRCAB_ID)
);
create unique index AK_TB_PRCAB on TB_PRCAB (PRCAB001,PRCAB002);
create sequence SEQ_TB_PRCAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCAB to public;
grant index  on TB_PRCAB to public;
grant update on TB_PRCAB to public; 
grant delete on TB_PRCAB to public;  
grant insert on TB_PRCAB to public; 
grant select on SEQ_TB_PRCAB to public;   