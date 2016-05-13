/*
================================================================================
表结构代码:TB_SERDK
表结构名称:签收单条码表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SERDK;
drop index AK_TB_SERDK;
drop table TB_SERDK;
create table TB_SERDK  (                                       
   SERDK_ID           INTEGER                     not null,    /*签收条码ID           */         
   SERDK001           INTEGER                     not null,    /*签收单ID             */
   SERDK002           INTEGER                     not null,    /*签收单明细ID         */
   SERDK003	      VARCHAR2(64) 		  not null,    /*库存条码             */
   SERDK004           NUMBER(28,0)                not null,    /*发货数量             */
   SERDK005           NUMBER(28,0)                 not null,   /*签收数量             */  
   CREATE_USER        VARCHAR2(12),                            /*建立人员             */
   USER_GROUP         VARCHAR2(12),                            /*建立人员部门         */                              
   CREATE_DATE        DATE,                                    /*建立日期             */
   MODIFIER           VARCHAR2(12),                            /*修改人员             */
   MODI_DATE          DATE,                                    /*修改日期             */
   FLAG               NUMBER,                                  /*资料状态             */
  
   
   constraint PK_TB_SERDK primary key (SERDK_ID)                               
);                                           
create unique index AK_TB_SERDK on TB_SERDK (SERDK002,SERDK003,FALG);               
create sequence SEQ_TB_SERDK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERDK to public;                                     
grant index  on TB_SERDK to public;                                     
grant update on TB_SERDK to public;                                      
grant delete on TB_SERDK to public;                                       
grant insert on TB_SERDK to public;                                      
grant select on SEQ_TB_SERDK to public;                                        