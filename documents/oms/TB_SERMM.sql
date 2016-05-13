/*
20141107 add by wangww for 红星
*/


/*
================================================================================
表结构代码:TB_SERMM
表结构名称:商户信用信息维护表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_SERMM;
drop index AK_TB_SERMM;
drop table TB_SERMM;
create table TB_SERMM  (                                       
   SERMM_ID           INTEGER                not null,             /*商户信用信息维护id     */   
   SERMM001           INTEGER                not null,             /*商场ID            */   
   SERMM002           VARCHAR2(4)                                  /*年度              */   
   SERMM003           VARCHAR2(2),                                 /*月份              */   
   SERMM004           INTEGER ,                                    /*商户ID            */   
   SERMM005           INTEGER,                                     /*展位ID            */ 
   SERMM006           INTEGER,                                     /*品牌ID            */ 
   SERMM007           VARCHAR2(255),                               /*门牌号            */
   SERMM008           INTEGER,                                     /*扣分项目ID        */ 
   SERMM009           VARCHAR2(4),                                 /*扣分项目编码      */ 
   SERMM010           VARCHAR2(60)                                 /*扣分项目名称      */ 
   SERMM011           VARCHAR2(1),                                 /*扣分类型          */ 1、一票否决 2、服务指标 3、管理指标
   SERMM012           VARCHAR2(1),                                 /*扣分纬度          */ 
   SERMM013           VARCHAR2(1),                                 /*扣分行为          */    
   SERMM014           VARCHAR2(1),                                 /*扣分来源          */1、Seri020  2、seri100
   SERMM015           NUMBER(2),                                   /*扣减分数          */
   SERMM016           INTEGER,                                     /*品类ID            */
   SERMM017           INTEGER,                                     /*楼层ID            */
   SERMM018           INTEGER,                                     /*合同ID            */
   SERMM019           VARCHAR2(255),                               /*备注              */
   SERMM020           INTEGER,                                     /*扣分行为ID        */ 20141205 add by gaoxl
   SERMM021           VARCHAR2(1),                                 /*数据来源1、手工录入；2、系统生成  */ 20141205 add by gaoxl     
   CREATE_USER        VARCHAR2(12),                                /*建立人员          */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门      */
   CREATE_DATE        DATE,                                        /*建立日期          */
   MODIFIER           VARCHAR2(12),                                /*修改人员          */
   MODI_DATE          DATE,                                        /*修改日期          */
   FLAG               NUMBER(1),                                   /*资料状态          */
   
   constraint PK_TB_SERMM primary key (SERMM_ID)                               
);                                           
create unique index AK_TB_SERMM on TB_SERMM (SERMM_ID,FLAG);               
create sequence SEQ_TB_SERMM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMM to public;                                     
grant index  on TB_SERMM to public;                                     
grant update on TB_SERMM to public;                                      
grant delete on TB_SERMM to public;                                       
grant insert on TB_SERMM to public;                                      
grant select on SEQ_TB_SERMM to public;       