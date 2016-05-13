/*
================================================================================
表结构代码:TB_CONHB
表结构名称:品类引进协议调整单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONHB;
drop index AK_TB_CONHB;
drop table TB_CONHB;
create table TB_CONHB  (
   CONHB_ID             INTEGER                         not null,  /*协议调整单子表ID    */
   CONHB001             INTEGER                         not null,  /*协议调整单ID        */
   CONHB002             INTEGER                         not null,  /*商品ID              */
   CONHB003             INTEGER,                                   /*最小采购单位ID      */
   CONHB004             NUMBER(12,2),                              /*(原)含税采购价      */
   CONHB005             NUMBER(12,2),                              /*含税采购价          */
   CONHB006             NUMBER(12,2),                              /*(原)最低采购量      */
   CONHB007             NUMBER(12,2),                              /*最低采购量          */
   CONHB008             NUMBER(12,2),                              /*(原)采购量满        */
   CONHB009             NUMBER(12,2),                              /*采购量满            */
   CONHB010             NUMBER(12,2),                              /*(原)采购价满        */
   CONHB011             NUMBER(12,2),                              /*采购价满            */
   CONHB012             NUMBER(12,2),                              /*(原)折扣率(%)       */
   CONHB013             NUMBER(12,2),                              /*折扣率(%)           */
   CONHB014             NUMBER(12,2),                              /*(原)搭赠量          */
   CONHB015             NUMBER(12,2),                              /*搭赠量              */
   CONHB016             NUMBER(5),                                 /*(原)默认供货天数    */
   CONHB017             NUMBER(5),                                 /*默认供货天数        */
   CONHB018             NUMBER(12,2),                              /*(原)结算扣率(%)     */
   CONHB019             NUMBER(12,2),                              /*结算扣率(%)         */
   CONGB020             INTEGER,                                   /*(原)税种            */  modi by 20091020
   CONGB021             NUMBER(12,2),                              /*(原)税率            */  modi by 20091020
   CONGB022             INTEGER,                                   /*税种                */  modi by 20091020
   CONGB023             NUMBER(12,2),                              /*税率                */  modi by 20091020
   CONGB024             NUMBER(12,2),                              /*(原)税前单价        */  modi by 20091020 
   CONGB025             NUMBER(12,2),                              /*税前单价            */  modi by 20091020   
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONHB primary key (CONHB_ID)
);
create unique index AK_TB_CONHB on TB_CONHB (CONHB001,CONHB002);
create sequence SEQ_TB_CONHB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONHB to public;
grant index  on TB_CONHB to public;
grant update on TB_CONHB to public; 
grant delete on TB_CONHB to public;  
grant insert on TB_CONHB to public; 
grant select on SEQ_TB_CONHB to public;   