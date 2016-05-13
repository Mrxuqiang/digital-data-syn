/*
================================================================================
表结构代码:TB_INVOB
表结构名称:备货库存申请表
表结构目的:局部
================================================================================
*/

drop sequence SEQ_TB_INVOB;
drop index AK_TB_INVOB;
drop table TB_INVOB;
create table TB_INVOB  (
   INVOB_ID             INTEGER                         not null,  /*备货库存申请ID          */  
   INVOB001             VARCHAR2(1)                     not null,  /*来源单类型		     */--1.调拨申请单 2.销售单
   INVOB002             INTEGER                         not null,  /*来源单ID		     */
   INVOB003             VARCHAR2(30)                    not null,  /*来源单号  		     */
   INVOB004             INTEGER                         not null,  /*采购订单ID		     */
   INVOB005             INTEGER                         not null,  /*采购订单明细ID	     */
   INVOB006             VARCHAR2(30)                    not null,  /*采购订单号  	     */
   INVOB007             VARCHAR2(1)                     not null,  /*商品服务属性  	     */
   INVOB008             VARCHAR2(1)                     not null,  /*销售属性   	     */
   INVOB009             INTEGER                         not null,  /*套件明细ID		     */
   INVOB010             INTEGER                         not null,  /*子件明细ID		     */
   INVOB011             INTEGER                         not null,  /*套件商品ID  	     */
   INVOB012             INTEGER,                                   /*套件维度1  	     */
   INVOB013             INTEGER,                                   /*套件维度2  	     */
   INVOB014             INTEGER,                                   /*套件维度3  	     */
   INVOB015             INTEGER,                                   /*套件维度4  	     */
   INVOB016             INTEGER,                                   /*套件维度5  	     */
   INVOB017             INTEGER                         not null,  /*子件商品ID  	     */
   INVOB018             INTEGER,                                   /*子件维度1  	     */
   INVOB019             INTEGER,                                   /*子件维度2  	     */
   INVOB020             INTEGER,                                   /*子件维度3  	     */
   INVOB021             INTEGER,                                   /*子件维度4  	     */
   INVOB022             INTEGER,                                   /*子件维度5  	     */
   INVOB023             VARCHAR2(1),				   /*备用              */  
   INVOB024             VARCHAR2(1),				   /*备用                */  
   INVOB025             VARCHAR2(30),				   /*备用   */
   INVOB026             NUMBER(18,3)                    not null,  /*备货数量   	     */
   INVOB027             NUMBER(18,3)                    not null,  /*占用数量   	     */
   INVOB028             NUMBER(18,3)                            ,  /*分配数量   	     */
   INVOB029             INTEGER,                                   /*仓库                    */
   INVOB030             DATE   ,                                   /*到货日期                */
   INVOB031             DATE   ,                                   /*占用日期                */
   INVOB032             VARCHAR2(255)                            ,  /*备注       	     */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门            */                               
   CREATE_DATE          DATE,                                      /*建立日期                */
   MODIFIER             VARCHAR2(12),                              /*修改人员                */
   MODI_DATE            DATE,                                      /*修改日期                */
   FLAG                 NUMBER(1),                                 /*资料状态                */
   constraint PK_TB_INVOB primary key (INVOB_ID)
);

create sequence SEQ_TB_INVOB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVOB to public;
grant index  on TB_INVOB to public;
grant update on TB_INVOB to public; 
grant delete on TB_INVOB to public;  
grant insert on TB_INVOB to public; 
grant select on SEQ_TB_INVOB to public; 