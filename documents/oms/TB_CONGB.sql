/*
================================================================================
表结构代码:TB_CONGB
表结构名称:品类引进协议子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONGB;
drop index AK_TB_CONGB;
drop table TB_CONGB;
create table TB_CONGB  (
   CONGB_ID             INTEGER                         not null,  /*协议子表ID          */
   CONGB001             INTEGER                         not null,  /*协议ID              */
   CONGB002             INTEGER                         not null,  /*商品ID              */
   CONGB003             INTEGER,                                   /*最小采购单位ID      */
   CONGB004             NUMBER(12,2),                              /*采购价              */
   CONGB005             NUMBER(12,2),                              /*最低采购量          */
   CONGB006             NUMBER(12,2),                              /*采购量满            */
   CONGB007             NUMBER(12,2),                              /*采购价满            */
   CONGB008             NUMBER(12,2),                              /*折扣率(%)           */
   CONGB009             NUMBER(12,2),                              /*搭赠量              */
   CONGB010             NUMBER(5),                                 /*默认供货天数        */
   CONGB011             NUMBER(12,2),                              /*结算扣率(%)         */
   CONGB012             INTEGER,                                   /*税种                */  modi by 20091020
   CONGB013             NUMBER(12,2),                              /*税率                */  modi by 20091020
   CONGB014             NUMBER(12,2),                              /*税前单价            */  modi by 20091020 
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONGB primary key (CONGB_ID)
);
create unique index AK_TB_CONGB on TB_CONGB (CONGB001,CONGB002);
create sequence SEQ_TB_CONGB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONGB to public;
grant index  on TB_CONGB to public;
grant update on TB_CONGB to public; 
grant delete on TB_CONGB to public;  
grant insert on TB_CONGB to public; 
grant select on SEQ_TB_CONGB to public;   