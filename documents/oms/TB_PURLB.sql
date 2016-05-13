/*
================================================================================
表结构代码:TB_PURLB
表结构名称:收货单商品明细表
表结构目的:局部表
================================================================================
*/
1、单头新增单据来源类型 2、单身新增商品状态
drop sequence SEQ_TB_PURLB;
drop index AK_TB_PURLB;
drop table TB_PURLB;
create table TB_PURLB (
   PURLB_ID            INTEGER                not null,            /*收货单商品明细表ID   */        
   PURLB001            INTEGER                not null,            /*收货单主表ID        */ 
   PURLB002            INTEGER                 ,                   /*收货通知单明细ID    */        
   PURLB003            VARCHAR2(1)            not null,            /*收货状态            */ --1.完全收货2.部分收货3.异常收货       
   PURLB004            VARCHAR2(1)            not null,            /*商品服务属性        */        
   PURLB005            VARCHAR2(1)            not null,            /* 销售属性           */       
   PURLB006            INTEGER                not null,            /*商品ID              */        
   PURLB007            INTEGER,                                    /*维度1               */        
   PURLB008            INTEGER,                                    /*维度2               */   
   PURLB009            INTEGER,                                    /*维度3               */        
   PURLB010            INTEGER,                                    /*维度4               */                               
   PURLB011            INTEGER,                                    /*维度5               */        
   PURLB012            NUMBER(18,2)           not null,            /*应收数量            */  
   PURLB013            NUMBER(18,2),                               /*实收数量            */       
   PURLB014            NUMBER(12,2),                               /*折扣率              */
   PURLB015            NUMBER(12,2),                               /*扣率                */
   PURLB016            INTEGER                    not null,        /*税种                */
   PURLB017            NUMBER(18,3),                               /*搭赠量              */         
   PURLB018            NUMBER(12,2)               not null,        /*税率                */ 
   PURLB019            NUMBER(12,2),                               /*税前单价            */        
   PURLB020            NUMBER(12,2),                               /*含税单价            */
   PURLB021            NUMBER(12,2),                               /*税前金额            */        
   PURLB022            NUMBER(12,2),                               /*含税金额            */ 
   PURLB023            VARCHAR2(1),                                /*是否组装品          */
   PURLB024            VARCHAR2(1),                                /*是否成分            */
   PURLB025            INTEGER,                                    /*主商品ID            */
   PURLB026            INTEGER,                                    /*包数                */
   PURLB027            VARCHAR2(30),                               /*子套件对应关系随机码*/
   PURLB028            VARCHAR2(255),                              /*备注                */
   PURLB029            INTEGER,                                    /*收货通知条码ID      */
   PURLB030            VARCHAR2(40),                               /*货号                */  --20110721 add by xiechun
   PURLB031            VARCHAR2(255),                              /*备注1                */ --20110721 add by xiechun
   PURLB032            VARCHAR2(255),                              /*备注2                */ --20110721 add by xiechun
   PURLB033            VARCHAR2(255),                              /*备注3                */ --20110721 add by xiechun
   CREATE_USER         VARCHAR2(12),                               /*建立人员            */
   USER_GROUP          VARCHAR2(12),                               /*建立人员部门        */                               
   CREATE_DATE         DATE,                                       /*建立日期            */
   MODIFIER            VARCHAR2(12),                               /*修改人员            */
   MODI_DATE           DATE,                                       /*修改日期            */
   FLAG                NUMBER,                                     /*资料状态            */
   constraint PK_TB_PURLB primary key (PURLB_ID)
);
create unique index AK_TB_PURLB on TB_PURLB (PURLB_ID,PURLB001,PURLB006,FLAG);
create sequence SEQ_TB_PURLB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURLB to public;
grant index  on TB_PURLB to public;
grant update on TB_PURLB to public; 
grant delete on TB_PURLB to public;  
grant insert on TB_PURLB to public; 
grant select on SEQ_TB_PURLB to public;   