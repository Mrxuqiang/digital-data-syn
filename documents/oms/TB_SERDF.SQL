O/*
================================================================================
表结构代码:TB_SERDF
表结构名称:签收单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERDF;
drop index AK_TB_SERDF;
drop table TB_SERDF;
create table TB_SERDF  (
   SERDF_ID             INTEGER                 not null,              /*签收单明细ID        */
   SERDF001             INTEGER                 not null,              /*签收单ID            */
   SERDF002             INTEGER                 not null,              /*商品编号            */
   SERDF003             INTEGER                                        /*维度1               */
   SERDF004             INTEGER                                        /*维度2               */
   SERDF005             INTEGER                                        /*维度3               */
   SERDF006             INTEGER                                        /*维度4               */
   SERDF007             INTEGER                                        /*维度5               */
   SERDF008             INTEGER                                        /*单位id              */
   SERDF009             NUMBER(12,2)                                   /*发货数量            */
   SERDF010             NUMBER(12,2)                                   /*签收数量            */
   SERDF011             VARCHAR2(1),                                   /*是否组装品          */   
   SERDF012             VARCHAR2(1),                                   /*是否成分            */   
   SERDF013            INTEGER      ,                                  /*所属组装品ID        */  
   SERDF014            VARCHAR2(30),                          	       /*子套件对应随机码    */
   SERDF015             NUMBER(12,2)                                   /*签收包数            */
   SERDF016             INTEGER     ,                                  /*来源单明细ID        */
   SERDF017             VARCHAR2(1),                                   /*商品服务属性        */   
   SERDF018             VARCHAR2(1),                                   /*销售属性            */ 
   SERDF019             VARCHAR2(255),                                 /*备注                */   
   SERDF020             INTEGER           ,                            /*搬运分值            */  
   SERDF021             NUMBER(18,2),                                  /*发货金额            */--20110408 add by xiechun
   SERDF022             NUMBER(18,2),                                  /*签收金额            */--20110408 add by xiechun
   SERDF023             VARCHAR2(255),                                 /*签收异常描述        */
   CREATE_USER          VARCHAR2(12),                                  /*建立人员            */
   USER_GROUP           VARCHAR2(12),                                  /*建立人员部门        */                               
   CREATE_DATE          DATE,                                          /*建立日期            */
   MODIFIER             VARCHAR2(12),                                  /*修改人员            */
   MODI_DATE            DATE,                                          /*修改日期            */
   FLAG                 NUMBER(1),                                     /*资料状态            */
   constraint PK_TB_SERDF primary key (SERDF_ID)
);
create sequence SEQ_TB_SERDF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERDF to public;
grant index  on TB_SERDF to public;
grant update on TB_SERDF to public; 
grant delete on TB_SERDF to public;  
grant insert on TB_SERDF to public; 
grant select on SEQ_TB_SERDF to public;   