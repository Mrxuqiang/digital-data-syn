/*
================================================================================
表结构代码:TB_BATAE
表结构名称:批次明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BATAE;
drop index AK_TB_BATAE;
drop table TB_BATAE;
create table TB_BATAE  (
   BATAE_ID	            INTEGER                      not null,       /*批次ID            */
   BATAE001	            INTEGER                      not null,       /*仓库              */
   BATAE002	            INTEGER                      not null,       /*仓位              */
   BATAE003	            INTEGER                      not null,       /*供应商            */
   BATAE004	            VARCHAR2(1)                  not null,       /*结算方式          */
   BATAE005	            VARCHAR2(2)                  not null,       /*单据类型          */
   BATAE006	            INTEGER                      not null,       /*单据ID            */
   BATAE007	            INTEGER                      not null,       /*商品ID            */
   BATAE008	            NUMBER(18,3)                 not null,       /*批次数量          */
   BATAE009	            NUMBER(18,3)                 not null,       /*销售数量          */
   BATAE010	            NUMBER(18,3)                 not null,       /*退厂数量          */
   BATAE011	            NUMBER(18,3)                 not null,       /*配出              */
   BATAE012	            NUMBER(18,3)                 not null,       /*退配出            */
   BATAE013	            NUMBER(18,3)                 not null,       /*调出数量          */
   BATAE014	            NUMBER(18,3)                 not null,       /*移出数量          */
   BATAE015	            NUMBER(18,3)                 not null,       /*组出              */
   BATAE016	            NUMBER(18,3)                 not null,       /*拆出              */
   BATAE017	            NUMBER(18,3)                 not null,       /*损耗数量          */
   BATAE018	            NUMBER(18,3)                 not null,       /*转出数量          */
   BATAE019	            NUMBER(18,3)                 not null,       /*领出              */
   BATAE020	            NUMBER(18,3)                 not null,       /*剩余数量          */
   BATAE021	            NUMBER(18,3)                 not null,       /*锁定数量          */
   BATAE022	            NUMBER(12,2)                 not null,       /*批次进价          */
   BATAE023	            NUMBER(12,2)                 not null,       /*进价金额          */
   BATAE024	            NUMBER(12,2)                 not null,       /*批次余额          */
   BATAE025	            INTEGER ,                                    /*原始批ID          */
   BATAE026	            NUMBER(18,3)                 not null,       /*已结数量          */
   BATAE027	            INTEGER,                                     /*原始供应商        */
   BATAE028	            NUMBER(18,3),                                /*已售转出          */
   BATAE029             DATE                         not null,       /*单据日期          */
   BATAE030             VARCHAR2(30)                 not null,       /*主批号             */      
   BATAE031             VARCHAR2(30),                                /*辅批号             */      
   BATAE032             VARCHAR2(30),                                /*厂商批号           */      
   BATAE033             INTEGER,                                     /*单据明细ID         */      
   BATAE034             INTEGER,                                     /*维度1              */      
   BATAE035             INTEGER,                                     /*维度2              */      
   BATAE036             INTEGER,                                     /*维度3              */      
   BATAE037             INTEGER,                                     /*维度4              */      
   BATAE038             INTEGER,                                     /*维度5              */      
   BATAE039             DATE,                                        /*生产日期           */      
   BATAE040             DATE,                                        /*保质日期           */      
   BATAE041             VARCHAR2(1),                                 /*优先级             */      
   BATAE042             VARCHAR2(1)           not null,              /*商品服务属性       */      
   BATAE043             VARCHAR2(1)           not null,              /*物权属性           */      
   BATAE044             INTEGER,                                     /*批次汇总ID         */
   BATAE045	            INTEGER ,                                    /*税种ID             */   //modi by 20091020 
   BATAE046	            NUMBER(18,3)                                 /*税率               */   //modi by 20091020   
   BATAE047	            NUMBER(18,3),                                /*税前单价           */   //modi by 20091029       
   constraint PK_TB_BATAE primary key (BATAE_ID)
);
create unique index AK_TB_BATAE on TB_BATAE (BATAE005,BATAE006,BATAE033);
create sequence SEQ_TB_BATAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATAE to public;
grant index  on TB_BATAE to public;
grant update on TB_BATAE to public; 
grant delete on TB_BATAE to public;  
grant insert on TB_BATAE to public; 
grant select on SEQ_TB_BATAE to public;   