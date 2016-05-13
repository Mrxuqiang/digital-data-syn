/*
================================================================================
表结构代码:TB_SERIK
表结构名称:同城比价计划子表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SERIK;
drop index AK_TB_SERIK;
drop table TB_SERIK;
create table TB_SERIK  (
   SERIK_ID             INTEGER                         not null,  /*比价计划子ID       */
   SERIK001             INTEGER                         not null,  /*比价计划主ID       */
   SERIK002             INTEGER,                                   /*商户编码           */
   SERIK003             INTEGER,                                   /*展位号             */
   SERIK004             INTEGER,                                   /*合同号             */   
   SERIK005             INTEGER,                                   /*品牌               */
   SERIK006             VARCHAR2(80),                              /*商品名称           */
   SERIK007             VARCHAR2(60),                              /*型号               */
   SERIK008             VARCHAR2(60),                              /*规格               */
   SERIK009             NUMBER(22,2),                              /*价格               */
   SERIK010             INTEGER,                                   /*调研对象           */
   SERIK011             VARCHAR2(255),                             /*备注               */
   SERIK012             INTEGER,                                   /*比价人             */ 
   SERIK013             DATE,                                      /*比价日期           */  
   SERIK014             NUMBER(22,2),                              /*调研对象价格       */ 
   SERIK015             VARCHAR2(255),                             /*比价说明           */              
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_SERIK primary key (SERIK_ID)
);
create sequence SEQ_TB_SERIK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIK to public;
grant index  on TB_SERIK to public;
grant update on TB_SERIK to public; 
grant delete on TB_SERIK to public;  
grant insert on TB_SERIK to public; 
grant select on SEQ_TB_SERIK to public;   