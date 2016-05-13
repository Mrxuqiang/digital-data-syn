/*
================================================================================
表结构代码:TB_CONNB
表结构名称:品类引进协议子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONNB;
drop index AK_TB_CONNB;
drop table TB_CONNB;
create table TB_CONNB  (
   CONGB_ID             INTEGER                         not null,  /*品类协议明细ID      */
   CONGB001             INTEGER                         not null,  /*品类协议ID          */
   CONGB002             INTEGER                         not null,  /*商品ID              */
   CONGB003             NUMBER(18,3),                              /*最低采购量          */
   CONGB004             INTEGER,                                   /*最小采购单位        */
   CONGB005             NUMBER(18,3),                              /*采购价              */
   CONGB006             VARCHAR2(255),                             /*备注                */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONNB primary key (CONGB_ID)
);
create unique index AK_TB_CONNB on TB_CONNB (CONGB001,CONGB002);
create sequence SEQ_TB_CONNB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONNB to public;
grant index  on TB_CONNB to public;
grant update on TB_CONNB to public; 
grant delete on TB_CONNB to public;  
grant insert on TB_CONNB to public; 
grant select on SEQ_TB_CONNB to public;   


