20140811 CREATE BY SUNDAN


/*
================================================================================
表结构代码:TB_PMTYC
表结构名称:明折明扣促销价签子表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_PMTYC;
drop index AK_TB_PMTYC;
drop table TB_PMTYC;
create table TB_PMTYC  (
   PMTYC_ID             INTEGER                         not null,  /*明折明扣促销价签ID             */
   PMTYC001             INTEGER                         not null,  /*明折明扣促销id           */
   PMTYC002             INTEGER                         not null,  /*BOM组id           */
   PMTYC003             VARCHAR2(80),				   /*BOM组名称           */
   PMTYC004             INTEGER                         not null,  /*商品id           */
   PMTYC005             VARCHAR2(30)                    not null,  /*商品编码           */
   PMTYC006             VARCHAR2(80),				   /*商品名称           */
   PMTYC007             VARCHAR2(80),                              /*型号                */ 
   PMTYC008             VARCHAR2(80),                              /*规格                */
   PMTYC009             NUMBER(22,2),                              /*零售价                */
   PMTYC010             NUMBER(22,2),                              /*套餐价                */
   PMTYC011             NUMBER(12,2),                              /*折扣率                */
   PMTYC012             NUMBER(12,2),                              /*BOM组套餐价                */
   PMTYC013             NUMBER(12,2),                              /*BOM组折扣率                */
   PMTYC014             NUMBER(12,2),                              /*BOM组零售价                */
   
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_PMTYC primary key (PMTYC_ID)
);
create unique index AK_TB_PMTYC on TB_PMTYA (PMTYC_ID);
create sequence SEQ_TB_PMTYC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTYC to public;
grant index  on TB_PMTYC to public;
grant update on TB_PMTYC to public; 
grant delete on TB_PMTYC to public;  
grant insert on TB_PMTYC to public; 
grant select on SEQ_TB_PMTYC to public;   