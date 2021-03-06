/*
================================================================================
表结构代码:TB_PUBTM
表结构名称:销售条码表
表结构目的:
================================================================================
*/
drop sequence SEQ_TB_PUBTM;
drop index AK_TB_PUBTM;
drop table TB_PUBTM;
create table TB_PUBTM  (
   PUBTM_ID             INTEGER                         not null,  /*销售条码ID                  */
   PUBTM001             INTEGER                         not null,  /*商品ID                      */
   PUBTM002             INTEGER,                                   /*维度1                       */
   PUBTM003             INTEGER,                                   /*维度2                       */
   PUBTM004             INTEGER,                                   /*维度3                       */ 
   PUBTM005             INTEGER,                                   /*维度4                       */
   PUBTM006             INTEGER,                                   /*维度5                       */
   PUBTM007             VARCHAR2(40),                              /*基本单位条码                */
   PUBTM008             VARCHAR2(40),                              /*一级包装条码                */
   PUBTM009             VARCHAR2(40),                              /*二级包装条码                */
   PUBTM010             VARCHAR2(40),                              /*三级包装条码                */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                    */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                */                               
   CREATE_DATE          DATE,                                      /*建立日期                    */
   MODIFIER             VARCHAR2(12),                              /*修改人员                    */
   MODI_DATE            DATE,                                      /*修改日期                    */
   FLAG                 NUMBER(1),                                 /*资料状态                    */
   constraint PK_TB_PUBTM primary key (PUBTM_ID)
);
create unique index AK_TB_PUBTM on TB_PUBTM (PUBTM001,PUBTM002,PUBTM003,PUBTM004,PUBTM005,PUBTM006);
create sequence SEQ_TB_PUBTM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBTM to public;
grant index  on TB_PUBTM to public;
grant update on TB_PUBTM to public; 
grant delete on TB_PUBTM to public;  
grant insert on TB_PUBTM to public; 
grant select on SEQ_TB_PUBTM to public;   
