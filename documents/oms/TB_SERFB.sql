/*
================================================================================
表结构代码:TB_SERFB
表结构名称:寄存单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERFB;
drop index AK_TB_SERFB;
drop table TB_SERFB;
create table TB_SERFB  (
   SERFB_ID             INTEGER                      not null,     /*寄存明细ID                */  
   SERFB001             INTEGER                      not null,     /*寄存单ID                  */  
   SERFB002             INTEGER                      not null,     /*来源单ID                  */  
   SERFB003             INTEGER                      not null,     /*来源单明细ID              */  
   SERFB004             INTEGER                      not null,     /*商品条码                  */  
   SERFB005             INTEGER                      not null,     /*商品编码                  */  
   SERFB006             INTEGER                                    /*维度1                     */  
   SERFB007             INTEGER                                    /*维度2                     */  
   SERFB008             INTEGER                                    /*维度3                     */  
   SERFB009             INTEGER                                    /*维度4                     */  
   SERFB010             INTEGER                                    /*维度5                     */  
   SERFB011             INTEGER                      not null,     /*出库单位                  */  
   SERFB012             NUMBER(12,2)                 not null,     /*单位换算率                */  
   SERFB013             NUMBER(18,3)                 not null,     /*寄存量                    */  
   SERFB014             NUMBER(18,3)                 not null,     /*已提数量                  */ 
   SERFB015             VARCHAR2(1)                  not null,     /*商品服务属性              */ 
   SERFB016             VARCHAR2(25)                               /*备注                      */
   SERFB017             NUMBER(18,3)                 not null,     /*可寄存量                  */   
   CREATE_USER          VARCHAR2(12),                              /*建立人员                  */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门              */                               
   CREATE_DATE          DATE,                                      /*建立日期                  */
   MODIFIER             VARCHAR2(12),                              /*修改人员                  */
   MODI_DATE            DATE,                                      /*修改日期                  */
   FLAG                 NUMBER(1),                                 /*资料状态                  */
   constraint PK_TB_SERFB primary key (SERFB_ID)
);
create index AK_TB_SERFB on TB_SERFB (SERFB_ID,SERFB002,SERFB005);
create sequence SEQ_TB_SERFB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERFB to public;
grant index  on TB_SERFB to public;
grant update on TB_SERFB to public; 
grant delete on TB_SERFB to public;  
grant insert on TB_SERFB to public; 
grant select on SEQ_TB_SERFB to public;   