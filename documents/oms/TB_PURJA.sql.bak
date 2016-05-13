/*
================================================================================
表结构代码:TB_PURJA
表结构名称:收货通知单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PURJA;
drop index AK_TB_PURJA;
drop table TB_PURJA;
create table TB_PURJA  (
   PURJA_ID            INTEGER                not null,            /*收货单ID         */        
   PURJA001            NUMBER(1)              not null,            /*备用             */ --mark 20100329       
   PURJA002            INTEGER                not null,            /*收货单别         */        
   PURJA003            VARCHAR2(30)           not null,            /*收货单号         */        
   PURJA004            DATE                   not null,            /*预计到货日期     */        
   PURJA005            INTEGER,                                    /*备用             */ --mark 20100329     
   PURJA006            INTEGER                not null,            /*收货营运组织     */        
   PURJA007            INTEGER                not null,            /*收货部门         */        
   PURJA008            INTEGER                not null,            /*收货人员         */   
   PURJA009            INTEGER,                                    /*备用             */ --mark 20100329
   PURJA010            INTEGER,                                    /*备用             */ --mark 20100329       
   PURJA011            INTEGER                not null,            /*供应商           */        
   PURJA012            VARCHAR2(1)            not null,            /*收货状态         */ --mark 20100329       
   PURJA013            VARCHAR2(1)            not null,            /*备用             */ --mark 20100329
   PURJA014            VARCHAR2(1)            not null,            /*结案码           */  --modify 20101021 by hansf	     
   PURJA015            VARCHAR2(30),                               /*厂商单号         */ --modify 20100329     
   PURJA016            VARCHAR2(255),                              /*收货地址         */        
   PURJA017            VARCHAR2(255),                              /*备注             */        
   PURJA018            VARCHAR2(1)             not null,           /*审核状态         */        
   PURJA019            INTEGER,                                    /*录入人           */        
   PURJA020            DATE,                                       /*录入日期         */        
   PURJA021            INTEGER,                                    /*审核人           */        
   PURJA022            DATE,                                       /*审核日期         */        
   PURJA023            INTEGER,                                    /*收货仓库         */        
   PURJA024            INTEGER,                                    /*收货库位         */   --mark 20100329    
   PURJA025            DATE,                                       /*交货日期         */   --mark 20100329
   PURJA026	       NUMBER(18,3),                               /*包数合计         */   --add by 0811
   PURJA027            NUMBER(18,3),                               /*含税金额合计     */   
   PURJA028            NUMBER(18,3),                               /*到货总量         */      
   PURJA029            NUMBER(18,3),                               /*备用             */ 
   PURJA030            NUMBER(12,2),                               /*总体积           */--20110725 modify by xiechun 
   PURJA031            NUMBER(1)                    not null,      /*来源类型         */ --20110813 add by xiechun--1.手工录入2.拣货单
   PURJA032            VARCHAR2(30),                               /*来源单号         */ --20110813 add by xiechun
   CREATE_USER         VARCHAR2(12),                               /*建立人员         */
   USER_GROUP          VARCHAR2(12),                               /*建立人员部门     */                               
   CREATE_DATE         DATE,                                       /*建立日期         */
   MODIFIER            VARCHAR2(12),                               /*修改人员         */
   MODI_DATE           DATE,                                       /*修改日期         */
   FLAG                NUMBER(1),                                  /*资料状态         */
   constraint PK_TB_PURJA primary key (PURJA_ID)
);
create unique index AK_TB_PURJA on TB_PURJA (PURJA_ID,PURJA002, PURJA003);
create sequence SEQ_TB_PURJA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURJA to public;
grant index  on TB_PURJA to public;
grant update on TB_PURJA to public; 
grant delete on TB_PURJA to public;  
grant insert on TB_PURJA to public; 
grant select on SEQ_TB_PURJA to public;   