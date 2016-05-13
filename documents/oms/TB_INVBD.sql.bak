/*
================================================================================
表结构代码:TB_INVBD
表结构名称:调拨出货子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVBD;
drop index AK_TB_INVBD;
drop table TB_INVBD;
create table TB_INVBD  (
   INVBD_ID            INTEGER                               not null,    /*拨出明细ID      */  
   INVBD001            INTEGER                               not null,    /*调拨发货单ID    */  
   INVBD002            VARCHAR2(1),                                       /*商品服务属性    */  
   INVBD003            VARCHAR2(1),                                       /*销售属性*/  
   INVBD004            INTEGER                               not null,    /*商品ID        */  
   INVBD005            INTEGER,                                           /*维度1           */  
   INVBD006            INTEGER,                                           /*维度2           */  
   INVBD007            INTEGER,                                           /*维度3           */  
   INVBD008            INTEGER,                                           /*维度4           */  
   INVBD009            INTEGER,                                           /*维度5           */  
   INVBD010            INTEGER                               not null,    /*单位            */  
   INVBD011            NUMBER(12,2)                          not null,    /*单位换算率      */  
   INVBD012            NUMBER(18,3)                          not null,    /*拨出量          */  
   INVBD013            NUMBER(18,3)                          not null,    /*拨入量          */  
   INVBD014            NUMBER(18,3)                          not null,    /*差异数量        */  
   INVBD015            NUMBER(12,2),                                      /*税前单价        */  
   INVBD016            NUMBER(12,2),                                      /*税前金额        */  
   INVBD017            NUMBER(12,2)                          not null,    /*含税单价        */  
   INVBD018            NUMBER(12,2)                          not null,    /*含税金额        */  
   INVBD019            INTEGER                               not null,    /*税种            */  
   INVBD020            NUMBER(12,2)                          not null,    /*税率            */  
   INVBD021            INTEGER                               not null,    /*供应商          */  
   INVBD022	       VARCHAR2(1)                           not null,    /*经营方式        */ 
   INVBD023            VARCHAR2(255),                                     /*备注            */
   INVBD024            NUMBER(12,2),                                      /*排车量*/ --add by hansf 20100309
   INVBD025            VARCHAR2(1),                                       /*是否组装品*/
   INVBD026            VARCHAR2(1),                                       /*是否成分*/
   INVBD027            INTEGER                              ,             /*主商品ID           */
   INVBD028            INTEGER                                     ,      /*包数           */
   INVBD029            VARCHAR2(30),                                      /*随机对应码*/
   INVBD030            NUMBER(18,3),                                       /*费用分摊金额*/ --add by hansf 20110120
   INVBD035
   INVBD036
   INVBD037            VARCHAR2(255),                                     /*备注1            */
   INVBD038            VARCHAR2(255),                                     /*备注2            */
   INVBD039            VARCHAR2(255),                                     /*备注3            */
   CREATE_USER          VARCHAR2(12),                                     /*建立人员             */
   USER_GROUP           VARCHAR2(12),                                     /*建立人员部门         */                               
   CREATE_DATE          DATE,                                             /*建立日期             */
   MODIFIER             VARCHAR2(12),                                    /*修改人员             */
   MODI_DATE            DATE,                                            /*修改日期             */
   FLAG                 NUMBER(1),                                       /*资料状态             */
   constraint PK_TB_INVBD primary key (INVBD_ID)
);
create unique index AK_TB_INVBD on TB_INVBD (INVBD_ID,INVBD004);
create sequence SEQ_TB_INVBD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVBD to public;
grant index  on TB_INVBD to public;
grant update on TB_INVBD to public; 
grant delete on TB_INVBD to public;  
grant insert on TB_INVBD to public; 
grant select on SEQ_TB_INVBD to public;   