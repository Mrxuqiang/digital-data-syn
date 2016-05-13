\/*
================================================================================
表结构代码:TB_DTBCE
表结构名称:预排车单客户子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DTBCE;
drop index AK_TB_DTBCE;
drop table TB_DTBCE;
create table TB_DTBCE  (                                       
   DTBCE_ID	         INTEGER                       not null,   /*客户列表ID       */           
   DTBCE001	         INTEGER                       not null,   /*预排车单ID       */           
   DTBCE002	         INTEGER,                                  /*客户ID           */   -- modify hansf 20100508 可以为null        
   DTBCE003	         INTEGER                       not null,   /*来源单号         */           
   DTBCE004	         VARCHAR2(255),                            /*送货地址         */   -- modify hansf 20100809 可以为null            
   DTBCE005	         DATE                          not null,   /*送货日期         */           
   DTBCE006	         VARCHAR2(30),                             /*顾客姓名         */           
   DTBCE007	         VARCHAR2(30),                             /*顾客电话         */           
   DTBCE008	         NUMBER(12,2)                  not null,   /*销售收入(送货金额)         */           
   DTBCE009	         VARCHAR2(10),                             /*预约时间         */   --mark by hansf        
   DTBCE010	         INTEGER,                                  /*楼层             */           
   DTBCE011	         NUMBER(12,2),                             /*体积             */           
   DTBCE012	         NUMBER(12,2),                             /*重量             */           
   DTBCE013	         NUMBER(4)                     not null,   /*排单顺序         */           
   DTBCE014	         VARCHAR2(1)                   not null,   /*是否排单         */           
   DTBCE015	         VARCHAR2(1)                   not null,   /*是否有电梯         */    --modify 是否有电梯
   DTBCE016	         VARCHAR2(1)                   not null,   /*来源类别         */  
   DTBCE017              INTEGER                       not null,   /*来源门店         */    --2010-01-26 add by hansf
   DTBCE018              INTEGER                       not null,   /*排车次数         */   
   DTBCE019		 VARCHAR2(30),                             /*手机号码一      */   
   DTBCE020              VARCHAR2(30),                             /*手机号码二      */    --add by hansf 2010-03-08
   DTBCE021              VARCHAR2(1),				   /*送货状态        */  -- add by hansf 1部分送货 2.完全送货
   DTBCE022              VARCHAR2(255),                            /*备注            */ 
   DTBCE023              INTEGER,                                  /*送货区域        */ -- add by hansf 2010-6-24
   DTBCE024              INTEGER,                                  /*安装服务单ID    */
   DTBCE025              INTEGER,                                  /*签收单ID        */  --add by hansf 20101018
   DTBCE026              INTEGER,                                  /*序号            */  --20110225 add by xiechun
   DTBCE027            INTEGER,                                    /*送货客户        */ --20110726 add by xiechun
   DTBCE028            INTEGER,                                    /*收款客户        */ --20110726 add by xiechun
   DTBCE029              VARCHAR2(1),                              /*约定送货时间    */
   DTBCE030              INTEGER,                                  /*入库单ID        */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门    */             
   CREATE_DATE        DATE,                                        /*建立日期        */             
   MODIFIER           VARCHAR2(12),                                /*修改人员        */             
   MODI_DATE          DATE,                                        /*修改日期        */             
   FLAG               NUMBER(1),                                   /*资料状态        */            


  constraint PK_TB_DTBCE primary key (DTBCE_ID)                               
);                                           
create unique index AK_TB_DTBCE on TB_DTBCE (DTBCE001,DTBCE002,DTBCE003);               
create sequence SEQ_TB_DTBCE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBCE to public;                                     
grant index  on TB_DTBCE to public;                                     
grant update on TB_DTBCE to public;                                      
grant delete on TB_DTBCE to public;                                       
grant insert on TB_DTBCE to public;                                      
grant select on SEQ_TB_DTBCE to public;                                        