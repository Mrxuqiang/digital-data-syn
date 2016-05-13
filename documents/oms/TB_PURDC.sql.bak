/*
================================================================================
表结构代码:TB_PURDC
表结构名称:采购订单二级子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PURDC;
drop index AK_TB_PURDC;
drop table TB_PURDC;
create table TB_PURDC  (
   PURDC_ID               INTEGER                   not null,             /*子表明细ID       */
   PURDC001               INTEGER                   not null,             /*采购明细单ID     */
   PURDC002               INTEGER                   not null,             /*采购订单主表ID   */	
   PURDC003               INTEGER,                                        /*单据类型         */
   PURDC004               INTEGER,                                        /*来源单据ID       */
   PURDC005               INTEGER,                                        /*来源单据明细ID   */
   PURDC006		  INTEGER,                                        /*来源营运组织     */
   PURDC007               INTEGER                   not null,             /*商品ID           */
   PURDC008               INTEGER,                                        /*维度1            */
   PURDC009               INTEGER,                                        /*维度2            */
   PURDC010               INTEGER,                                        /*维度3            */
   PURDC011               INTEGER,                                        /*维度4            */
   PURDC012               INTEGER,                                        /*维度5            */
   PURDC013               NUMBER(18,3)              not null,             /*订货数量         */
   PURDC014               NUMBER(18,3)  , 				  /*待收货量         */	
   PURDC015               NUMBER(18,3)  , 				  /*已经到货数量     */	
   PURDC016               NUMBER(18,3)  , 				  /*来源单数量       */
   PURDC017               DATE,   				  	  /*期望到货日       */
   PURDC018               VARCHAR2(30),                                   /*来源单号         */
   PURDC019               VARCHAR2(255),                                  /*备注             */ add by hansf 20100619
   PURDC020               INTEGER,                                        /*要货单明细ID     */
   PURDC021               NUMBER(18,3)                      , 		  /*作废量           */--20110217 add by xiechun
   CREATE_USER            VARCHAR2(12),                                   /*建立人员         */
   USER_GROUP             VARCHAR2(12),                                   /*建立人员部门     */                               
   CREATE_DATE            DATE,                                           /*建立日期         */
   MODIFIER               VARCHAR2(12),                                   /*修改人员         */
   MODI_DATE              DATE,                                           /*修改日期         */
   FLAG                   NUMBER(1),                                      /*资料状态         */
   constraint PK_TB_PURDC primary key (PURDC_ID)
);
create unique index AK_TB_PURDC on TB_PURDC (PURDC_ID,PURDC001,PURDC004);
create sequence SEQ_TB_PURDC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURDC to public;
grant index  on TB_PURDC to public;
grant update on TB_PURDC to public; 
grant delete on TB_PURDC to public;  
grant insert on TB_PURDC to public; 
grant select on SEQ_TB_PURDC to public;   