/*                                        
================================================================================
表结构代码:TB_RECAA                       
表结构名称:应收主表                       
表结构目的:                               
================================================================================
*/                                        
                                          
drop sequence SEQ_TB_RECAA;               
drop index AK_TB_RECAA;                                          
drop table TB_RECAA;                                             
create table TB_RECAA  (                                         
   RECAA_ID             INTEGER                         not null,  /*应收主ID             */
   RECAA001             INTEGER                         not null,  /*单别ID                 */
   RECAA002             VARCHAR2(30)                    not null,  /*应收单号             */
   RECAA003             INTEGER,                                   /*摊位ID               */
   RECAA004             INTEGER                         not null,  /*客户ID               */
   RECAA005             INTEGER                         not null,  /*收款客户ID           */
   RECAA006             DATE                            not null,  /*立账日期             */
   RECAA007             INTEGER ,                                  /*合同号ID             */
   RECAA008             VARCHAR2(1)                     not null,  /*单据来源             */
   RECAA009             VARCHAR2(30)                    not null,  /*来源单号           */
   RECAA010             INTEGER,                                   /*部门ID               */
   RECAA011             INTEGER,                                   /*人员ID               */
   RECAA012             DATE,                                      /*应收日               */
   RECAA013             VARCHAR2(1)                     not null,  /*单据状态             */
   RECAA014             INTEGER ,                                  /*录入ID               */
   RECAA015             DATE,                                      /*录入日期             */
   RECAA016             INTEGER,                                   /*审核人ID             */
   RECAA017             DATE,                                      /*审核日期             */
   RECAA018             NUMBER(16,2),                              /*原币含税合计         */
   RECAA019             NUMBER(16,2),                              /*本币含税合计         */
   RECAA020             NUMBER(16,2),                              /*原币已收款合计       */
   RECAA021             NUMBER(16,2),                              /*本币已收款合计       */
   RECAA022             VARCHAR2(1)                    not null,   /*现收                 */
   RECAA023             VARCHAR2(1)                    not null,   /*核销状态             */
   RECAA024             VARCHAR2(1)                    not null,   /*生成凭证             */
   RECAA025             INTEGER                        not null,   /*币种ID                 */
   RECAA026             NUMBER(16,4),                               /*汇率                 */
   RECAA027             INTEGER,                                   /*结算方式ID           */
   RECAA028             INTEGER,                                   /*营运组织ID           */
   RECAA029             VARCHAR2(255),                             /*备注                 */
   RECAA030             INTEGER,                                   /*来源单号ID           */
   RECAA031             VARCHAR2(255),                             /*发票号码            */
   RECAA032             VARCHAR2(1),                               /*坏账标志           */
   RECAA033             VARCHAR2(1),                               /*来源             */
   RECAA034             NUMBER(4),                                 /*会计年度           */   
   RECAA035             NUMBER(2),                                 /*会计期间           */   
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_RECAA primary key (RECAA_ID)                 
);                                                               
create unique index AK_TB_RECAA on TB_RECAA (RECAA001,RECAA002); 
create sequence SEQ_TB_RECAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_RECAA to public;                              
grant index  on TB_RECAA to public;                              
grant update on TB_RECAA to public;                              
grant delete on TB_RECAA to public;                              
grant insert on TB_RECAA to public;                              
grant select on SEQ_TB_RECAA to public;                          
                       
                       
                       
                       
                       
                       
                       
                       
                       