20140717 CREATE BY SUNDAN


/*
================================================================================
表结构代码:TB_OTMEE
表结构名称:商品信息表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_OTMEE;
drop index AK_TB_OTMEE;
drop table TB_OTMEE;
create table TB_OTMEE  (
   OTMEE_ID             INTEGER                         not null,  /*商品信息ID             */
   OTMEE001             VARCHAR2(1)                     not null,  /*价签类型  1.新增价签 2.降价调整 3.调价调整         */
   OTMEE002             INTEGER				                  not null,  /*价签ID           */
   OTMEE003             INTEGER                         not null,  /*合同ID               */
   OTMEE004             VARCHAR2(30)                    not null,  /*合同号               */   
   OTMEE005             VARCHAR2(10)			              not null,  /*品牌编码               */
   OTMEE006             VARCHAR2(80)                    not null,  /*品牌名称                     */  
   OTMEE007             VARCHAR2(10)			              not null,  /*系列编码                      */ 
   OTMEE008             VARCHAR2(80)                    not null,  /*系列名称                      */ 
   OTMEE009             VARCHAR2(30)                    not null,  /*商品编码                      */  
   OTMEE010             VARCHAR2(255)                    not null,  /*商品名称                      */  
   OTMEE011             VARCHAR2(80),                              /*商品型号                      */ 
   OTMEE012             VARCHAR2(80),                              /*商品规格                      */ 
   OTMEE013             VARCHAR2(2),				                       /*规格单位名称                  */     
   OTMEE014             VARCHAR2(100),				                       /*饰面/面料                     */ 
   OTMEE015             VARCHAR2(60),				                       /*辅料                          */
   OTMEE016             VARCHAR2(60),                              /*漆质                          */   
   OTMEE017             VARCHAR2(20),				                       /*单位名称                      */
   OTMEE018             VARCHAR2(40),                              /*等级                          */  
   OTMEE019             VARCHAR2(30),				                       /*产地名称                      */ 
   OTMEE020             NUMBER(22,2),                              /*原售价                        */ 
   OTMEE021             NUMBER(22,2),				                       /*降价                          */  
   OTMEE022             Date,					                             /*降价开始日期                  */  
   OTMEE023             Date,                                      /*降价结束日期                  */ 
   OTMEE024             VARCHAR2(80),                              /*基材                          */ 
   OTMEE025             VARCHAR2(255),				                     /*主要用料                      */     
   OTMEE026             INTEGER,                                   /*商户ID                        */     
   STATUS               VARCHAR2(1),				                       /*传送状态   0：未传送 1：传送成功 2：传送失败      */   
   MSG                  VARCHAR2(255),                             /*消息提示               */  
   Tran_date            Date,                                      /*传输日期               */  
   Send_count           INTEGER,                                   /*传输次数               */           
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_OTMEE primary key (OTMEE_ID)
);
create unique index AK_TB_OTMEE on TB_OTMEE (OTMEE002);
create sequence SEQ_TB_OTMEE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTMEE to public;
grant index  on TB_OTMEE to public;
grant update on TB_OTMEE to public; 
grant delete on TB_OTMEE to public;  
grant insert on TB_OTMEE to public; 
grant select on SEQ_TB_OTMEE to public;   