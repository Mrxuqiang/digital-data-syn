/*
================================================================================
表结构代码:TB_DTBCF
表结构名称:预排车单商品子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DTBCF;
drop index AK_TB_DTBCF;
drop table TB_DTBCF;
create table TB_DTBCF  (                                             
   DTBCF_ID	       INTEGER                   not null,     /*商品明细ID    */              
   DTBCF001	       INTEGER                   not null,     /*预排车单ID    */              
   DTBCF002	       INTEGER                   not null,     /*客户列表ID    */              
   DTBCF003	       INTEGER                   not null,     /*商品ID        */              
   DTBCF004	       INTEGER,				       /*维度1         */              
   DTBCF005	       INTEGER,				       /*维度2         */              
   DTBCF006	       INTEGER,				       /*维度3         */              
   DTBCF007	       INTEGER,			               /*维度4         */              
   DTBCF008	       INTEGER,			               /*维度5         */              
   DTBCF009	       INTEGER                   not null,     /*单位          */              
   DTBCF010	       NUMBER(18,3)              not null,     /*可排车数量    */              
   DTBCF011	       NUMBER(18,3)              not null,     /*实际排车数量  */              
   DTBCF012	       NUMBER(18,3),                           /*体积          */              
   DTBCF013	       NUMBER(18,3),                           /*重量          */              
   DTBCF014	       NUMBER(12,2)              not null,     /*单价          */              
   DTBCF015	       NUMBER(12,2)              not null,     /*实际排车金额  */       
   DTBCF016	       INTEGER                   not null,     /*来源明细ID    */   
   DTBCF017            VARCHAR2(255),                          /*备注          */
   DTBCF018	       VARCHAR2(1)		 not null,     /*是否排车      */   --modify 是否排车
   DTBCF019            VARCHAR2(1),                            /*方向          */   --modify 方向
   DTBCF020            INTEGER,                                /*仓库id        */ --界面上不显示出来
   DTBCF021            INTEGER,                                /*主商品ID      */  
   DTBCF022            VARCHAR2(1),                            /*是否成分      */  
   DTBCF023            VARCHAR2(1),                            /*是否组装品    */  
   DTBCF024            VARCHAR2(30),                           /*子套件关系生成随机码*/  -- add by hansf 2010-5-12       
   DTBCF025            INTEGER,                                /*签收单明细ID          */  --add by xiechun 20111107 
   CREATE_USER      VARCHAR2(12),                                /*建立人员           */             
   USER_GROUP       VARCHAR2(12),                                /*建立人员部门       */             
   CREATE_DATE      DATE,                                        /*建立日期           */             
   MODIFIER         VARCHAR2(12),                                /*修改人员           */             
   MODI_DATE        DATE,                                        /*修改日期           */             
   FLAG             NUMBER(1),                                   /*资料状态           */            
  constraint PK_TB_DTBCF primary key (DTBCF_ID)                               
);                                           
-- create unique index AK_TB_DTBCF on TB_DTBCF (DTBCF001,DTBCF002,DTBCF003);         -- mark by hansf       
create sequence SEQ_TB_DTBCF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBCF to public;                                     
grant index  on TB_DTBCF to public;                                     
grant update on TB_DTBCF to public;                                      
grant delete on TB_DTBCF to public;                                       
grant insert on TB_DTBCF to public;                                      
grant select on SEQ_TB_DTBCF to public;                                        