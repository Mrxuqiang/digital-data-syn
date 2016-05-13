20140716 CREATE BY SUNDAN


/*
================================================================================
表结构代码:TB_OTMAA
表结构名称:客户合同基本信息表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_OTMAA;
drop index AK_TB_OTMAA;
drop table TB_OTMAA;
create table TB_OTMAA  (
   OTMAA_ID             INTEGER                         not null,  /*客户合同基本信息ID */
   OTMAA001             VARCHAR2(16)                    not null,  /*商场编码           */
   OTMAA002             VARCHAR2(80)                    not null,  /*商场名称           */
   OTMAA003             INTEGER,                                   /*商户ID             */
   OTMAA004             VARCHAR2(30),                              /*商户编码           */   
   OTMAA005             VARCHAR2(80),				                       /*商户名称           */
   OTMAA006             INTEGER,				                           /*合同ID             */  
   OTMAA007             VARCHAR2(30),				                       /*合同号             */ 
   OTMAA008             INTEGER                         not null,  /*展位ID             */ 
   OTMAA009             VARCHAR2(80),				                       /*展位号             */  
   OTMAA010             VARCHAR2(10)			              ,          /*主品牌编码         */  
   OTMAA011             VARCHAR2(80)		                ,          /*主品牌名称        */ 
   OTMAA012             VARCHAR2(10)		              	not null,   /*主系列编码        */ 
   OTMAA013             VARCHAR2(80)		              	not null,   /*主系列名称        */     
   OTMAA014             DATE,					                              /*合同开始日期      */ 
   OTMAA015             DATE,					                              /*合同结束日期      */
   STATUS               VARCHAR2(1),                                /*传送状态        0：未传送 1：传送成功 2：传送失败       */   
   MSG		              VARCHAR2(255),				                      /*消息提示          */
   Tran_date            DATE,					                              /*传输日期          */  
   Send_count           INTEGER,				                            /*传输次数          */ 
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_OTMAA primary key (OTMAA_ID)
);
create unique index AK_TB_OTMAA on TB_OTMAA (OTMAA006);
create sequence SEQ_TB_OTMAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTMAA to public;
grant index  on TB_OTMAA to public;
grant update on TB_OTMAA to public; 
grant delete on TB_OTMAA to public;  
grant insert on TB_OTMAA to public; 
grant select on SEQ_TB_OTMAA to public;   