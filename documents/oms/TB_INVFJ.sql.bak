/*
================================================================================
表结构代码:TB_INVFJ
表结构名称:盘差调整单账面调整明细子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVFJ;
drop index AK_TB_INVFJ;
drop table TB_INVFJ;
create table TB_INVFJ  (
   INVFJ_ID         INTEGER                      not null,    /*账面调整明细ID  */    
   INVFJ001         INTEGER                      not null,    /*盘差调整单ID      */       
   INVFJ002         INTEGER                      not null,    /*商品编码          */        
   INVFJ003         INTEGER,                                  /*维度1             */    
   INVFJ004         INTEGER,                                  /*维度2             */    
   INVFJ005         INTEGER,                                  /*维度3             */    
   INVFJ006         INTEGER,                                  /*维度4             */    
   INVFJ007         INTEGER,                                  /*维度5             */ 
   INVFJ008         INTEGER,                                  /*备用              */ --update by hansf 备用 
   INVFJ009         INTEGER                      not null,    /*源货位              */  
   INVFJ010         NUMBER(12,2)                 not null,    /*调整数量            */    
   INVFJ011         INTEGER                      not null,    /*目标货位              */    
   INVFJ012         VARCHAR2(255),                            /*备注              */    
   CREATE_USER      VARCHAR2(12),                             /*建立人员           */
   USER_GROUP       VARCHAR2(12),                             /*建立人员部门       */                               
   CREATE_DATE      DATE,                                     /*建立日期           */
   MODIFIER         VARCHAR2(12),                             /*修改人员           */
   MODI_DATE        DATE,                                     /*修改日期           */
   FLAG             NUMBER(1),                                /*资料状态           */
   constraint PK_TB_INVFJ primary key (INVFJ_ID)
);
create unique index AK_TB_INVFJ on TB_INVFJ (INVFJ003,INVFJ004);
create sequence SEQ_TB_INVFJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVFJ to public;
grant index  on TB_INVFJ to public;
grant update on TB_INVFJ to public; 
grant delete on TB_INVFJ to public;  
grant insert on TB_INVFJ to public; 
grant select on SEQ_TB_INVFJ to public;   