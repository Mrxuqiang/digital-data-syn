/*
================================================================================
表结构代码:TB_RECAG
表结构名称:应收款核销表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_RECAG;
drop index AK_TB_RECAG;
drop table TB_RECAG;
create table TB_RECAG  (
   RECAG_ID             INTEGER                         not null,  /*核销表ID              */  
   RECAG001             VARCHAR2(30)                    not null,  /*核销批号              */  
   RECAG002             VARCHAR2(4)                     not null,  /*核销序号              */  
   RECAG003             DATE                            not null,  /*核销日期              */
   RECAG004             INTEGER                         not null,  /*核销人                */
   RECAG005             VARCHAR2(1)                     not null,  /*核销类型              */
   RECAG006             INTEGER                         not null,  /*单据主ID              */
   RECAG007             INTEGER                         not null,  /*单据类型ID            */
   RECAG008             VARCHAR2(1)                     not null,  /*核销对象类型          */                                                                           
   RECAG009             INTEGER                         not null,  /*核销对象ID            */
   RECAG010             DATE,                                      /*单据日期              */
   RECAG011             DATE,                                      /*审核日期              */
   RECAG012             INTEGER                         not null,  /*对方单据ID            */
   RECAG013             INTEGER                         not null,  /*对方单据类型ID         */
   RECAG014             NUMBER(16,2),                              /*原币余额              */
   RECAG015             NUMBER(16,2),                              /*本币余额              */
   RECAG016             NUMBER(16,2),                              /*本次核销原币金额      */
   RECAG017             NUMBER(16,2),                              /*本次核销本币金额      */
   RECAG018             VARCHAR2(1)                     not null,  /*生成凭证              */
   RECAG019             INTEGER                         not null,  /*币种                  */
   RECAG020             VARCHAR2(1),                               /*来源  20090923 add by 1、手工核销  2、自动核销  */
   RECAG021             VARCHAR2(30),                              /*来源单号              */  
   RECAG022             INTEGER                                    /*单别ID                */
   RECAG023             INTEGER                                    /*单身ID                */
   RECAG024             INTEGER                                    /*部门ID                */
   RECAG025             INTEGER                                    /*人员ID                */
   RECAG026             INTEGER                                    /*对方单身ID            */     
   RECAG027             INTEGER                                    /*银行ID                */
   RECAG028             INTEGER                                    /*对方部门ID            */
   RECAG029             INTEGER                                    /*对方人员ID            */ 
   RECAG030             INTEGER                                    /*本方现金异动码        */
   RECAG031             INTEGER                                    /*对方现金异动码        */    
   RECAG032             INTEGER                                    /*本方收付款客户ID      */  
   RECAG033             INTEGER                                    /*对方收付款客户ID      */  
   RECAG034             VARCHAR2(255)                              /*本方备注20100510 add by gaoxl       */ 
   RECAG035             VARCHAR2(255)                              /*对方备注20100510 add by gaoxl       */   
   RECAG036             NUMBER(22,2)                               /*手续费  20100603 add by gaoxl       */  
   RECAG037             INTEGER,                                   /*本方客商分类ID  20101216 add by gaoxl       */  
   RECAG038             INTEGER,                                   /*对方客商分类ID  20101216 add by gaoxl       */   
   RECAG039             INTEGER,                                   /*本方营运组织ID  20101216 add by gaoxl       */  
   RECAG040             INTEGER,                                   /*对方营运组织ID  20101216 add by gaoxl       */                                 
   CREATE_USER          VARCHAR2(12),                              /*建立人员              */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门          */                               
   CREATE_DATE          DATE,                                      /*建立日期              */
   MODIFIER             VARCHAR2(12),                              /*修改人员              */
   MODI_DATE            DATE,                                      /*修改日期              */
   FLAG                 NUMBER,                                 /*资料状态              */
   constraint PK_TB_RECAG primary key (RECAG_ID)
);
--create unique index AK_TB_RECAG on TB_RECAG (RECAG001,RECAG002,RECAG003,RECAG006,RECAG012,RECAG007,RECAG013);
create sequence SEQ_TB_RECAG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_RECAG to public;
grant index  on TB_RECAG to public;
grant update on TB_RECAG to public; 
grant delete on TB_RECAG to public;  
grant insert on TB_RECAG to public; 
grant select on SEQ_TB_RECAG to public;   