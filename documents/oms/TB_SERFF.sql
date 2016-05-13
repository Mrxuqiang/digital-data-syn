/*
================================================================================
表结构代码:TB_SERFF
表结构名称:送货单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERFF;
drop index AK_TB_SERFF;
drop table TB_SERFF;
create table TB_SERFF  (
   SERFF_ID             INTEGER                      not null,     /*送货明细ID                */  
   SERFF001             INTEGER                      not null,     /*送货单ID                  */  
   SERFF002             INTEGER                      not null,     /*来源单ID                  */  
   SERFF003             INTEGER                      not null,     /*来源单明细ID              */  
   SERFF004             INTEGER                      not null,     /*商品条码                  */  
   SERFF005             INTEGER                      not null,     /*商品编码                  */  
   SERFF006             INTEGER                                    /*维度1                     */  
   SERFF007             INTEGER                                    /*维度2                     */  
   SERFF008             INTEGER                                    /*维度3                     */  
   SERFF009             INTEGER                                    /*维度4                     */  
   SERFF010             INTEGER                                    /*维度5                     */  
   SERFF011             INTEGER                      not null,     /*出库单位                  */  
   SERFF012             NUMBER(12,2)                 not null,     /*单位换算率                */  
   SERFF013             NUMBER(18,3)                 not null,     /*送货量                    */  
   SERFF014             NUMBER(18,3)                 not null,     /*已排数量                  */ 
   SERFF015             NUMBER(12,2)                 not null,     /*含税单价                  */     
   SERFF016             NUMBER(12,2)                 not null,     /*含税金额                  */  
   SERFF017             VARCHAR2(25)                               /*备注                      */
   SERFF018             NUMBER(18,3)                 not null,     /*可送货量                  */   
   CREATE_USER          VARCHAR2(12),                              /*建立人员                  */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门              */                               
   CREATE_DATE          DATE,                                      /*建立日期                  */
   MODIFIER             VARCHAR2(12),                              /*修改人员                  */
   MODI_DATE            DATE,                                      /*修改日期                  */
   FLAG                 NUMBER(1),                                 /*资料状态                  */
   constraint PK_TB_SERFF primary key (SERFF_ID)
);
create index AK_TB_SERFF on TB_SERFF (SERFF_ID,SERFF002,SERFF005);
create sequence SEQ_TB_SERFF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERFF to public;
grant index  on TB_SERFF to public;
grant update on TB_SERFF to public; 
grant delete on TB_SERFF to public;  
grant insert on TB_SERFF to public; 
grant select on SEQ_TB_SERFF to public;   