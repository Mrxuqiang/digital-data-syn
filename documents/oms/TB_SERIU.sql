20140724 CREATE BY SUNDAN


/*
================================================================================
表结构代码:TB_SERIU
表结构名称:BOM组子表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SERIU;
drop index AK_TB_SERIU;
drop table TB_SERIU;
create table TB_SERIU  (
   SERIU_ID             INTEGER                         not null,  /*BOM组子表ID             */
   SERIU001             INTEGER				                  not null,  /*BOM组主表id           */
   SERIU002             INTEGER                         not null,  /*价签ID        */
   SERIU003             INTEGER,                                   /*合同ID        */
   SERIU004             INTEGER,                                   /*商品ID         */ 
   SERIU005             VARCHAR2(80),                              /*商品名称         */ 
   SERIU006             VARCHAR2(80),                              /*型号         */     
   SERIU007             VARCHAR2(80),                              /*规格         */ 
   SERIU008             VARCHAR2(2),                               /*规格单位        */  
   SERIU009             VARCHAR2(60),                              /*饰面/面料           */  
   SERIU010             VARCHAR2(60),                              /*辅料           */   
   SERIU011             VARCHAR2(60),                              /*漆质           */ 
   SERIU012             INTEGER,                                   /*等级ID           */ 
   SERIU013             NUMBER(22,2),                              /*售价           */
   SERIU014             VARCHAR2(80),                              /*等级名称             */   
   SERIU015             VARCHAR2(80),                              /*基材             */ 
   SERIU016             VARCHAR2(255),                             /*主要用料             */ 
   SERIU017             VARCHAR2(255),                             /*花色             */ 
   SERIU018             INTEGER,                                   /*单位ID           */
   SERIU019             INTEGER,                                   /*展位ID           */
   SERIU020             VARCHAR2(1),                               /*明码实价           */
   SERIU021             VARCHAR2(30),                              /*商品编码           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_SERIU primary key (SERIU_ID)
);
create unique index AK_TB_SERIU on TB_SERIU (SERIU001,SERIU002);
create sequence SEQ_TB_SERIU minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIU to public;
grant index  on TB_SERIU to public;
grant update on TB_SERIU to public; 
grant delete on TB_SERIU to public;  
grant insert on TB_SERIU to public; 
grant select on SEQ_TB_SERIU to public;   