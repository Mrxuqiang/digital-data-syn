/*
================================================================================
表结构代码:TB_BTMBA
表结构名称:服务单接口表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BTMBA;
drop index AK_TB_BTMBA;
drop table TB_BTMBA;
create table TB_BTMBA  (
   BTMBA_ID             INTEGER                 not null,              /*服务单ID      */ 
   BTMBA001             VARCHAR2(30)            not null,              /*服务单号      */
   BTMBA002             VARCHAR2(1)             not null,              /*来源单类型    */
   BTMBA003             VARCHAR2(30)            not null,              /*来源单号      */
   BTMBA004             VARCHAR2(30)            not null,              /*顾客姓名      */ 
   BTMBA005             VARCHAR2(30)            not null,              /*手机号一      */ 
   BTMBA006             VARCHAR2(30)            not null,              /*联系方式      */              
   BTMBA007             VARCHAR2(30)            not null,              /*收货人区域编码*/              
   BTMBA008             VARCHAR2(255)           not null,              /*送货地址      */              
   BTMBA009             VARCHAR2(32),                                  /*客户编码      */
   BTMBA010             VARCHAR2(30)            not null,              /*服务类型      */         
   BTMBA011             NUMBER(20,2)            not null,              /*尾款金额      */        
   BTMBA012             VARCHAR2(30),                                  /*提货仓库      */
   BTMBA013             VARCHAR2(255),                                 /*提货仓库地址  */
   BTMBA014             VARCHAR2(50),                                  /*提货仓库联系人*/
   BTMBA015             VARCHAR2(30),                                  /*提货仓库电话  */
   BTMBA016             VARCHAR2(255),                                 /*备注          */
   BTMBA017             VARCHAR2(30)            not null,              /*商品编码      */  
   BTMBA018             VARCHAR2(80)            not null,              /*商品名称      */                          
   BTMBA019             NUMBER(6)               not null,              /*数量          */           
   BTMBA020             VARCHAR2(1),                                   /*安装服务单号  */
   SYNC_STATE           VARCHAR2(10),                                  /*同步状态      */
   ERR_MSG              VARCHAR2(4000),                                /*错误原因      */                               
   CREATE_DATE          DATE,                                          /*创建日期      */
   MODI_DATE            DATE,                                          /*修改日期      */
   constraint PK_TB_BTMBA primary key (BTMBA_ID)
);
create sequence SEQ_TB_BTMBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BTMBA to public;
grant index  on TB_BTMBA to public;
grant update on TB_BTMBA to public; 
grant delete on TB_BTMBA to public;  
grant insert on TB_BTMBA to public; 
grant select on SEQ_TB_BTMBA to public;   