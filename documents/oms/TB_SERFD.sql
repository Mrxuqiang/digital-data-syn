/*
================================================================================
表结构代码:TB_SERFD
表结构名称:提货单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERFD;
drop index AK_TB_SERFD;
drop table TB_SERFD;
create table TB_SERFD  (
   SERFD_ID             INTEGER                      not null,     /*提货明细ID                */  
   SERFD001             INTEGER                      not null,     /*提货单ID                  */  
   SERFD002             INTEGER                      not null,     /*寄存单ID                  */  
   SERFD003             INTEGER                      not null,     /*寄存单明细ID              */  
   SERFD004             INTEGER                      not null,     /*商品条码                  */  
   SERFD005             INTEGER                      not null,     /*商品编码                  */  
   SERFD006             INTEGER,                                    /*维度1                     */  
   SERFD007             INTEGER,                                    /*维度2                     */  
   SERFD008             INTEGER,                                    /*维度3                     */  
   SERFD009             INTEGER,                                    /*维度4                     */  
   SERFD010             INTEGER,                                    /*维度5                     */  
   SERFD011             INTEGER                      not null,     /*出库单位                  */  
   SERFD012             NUMBER(12,2)                 not null,     /*单位换算率                */  
   SERFD013             NUMBER(18,3)                 not null,     /*寄存量                    */  
   SERFD014             NUMBER(18,3)                 not null,     /*提货量                    */ 
   SERFD015             VARCHAR2(25),                               /*备注                      */  
   CREATE_USER          VARCHAR2(12),                              /*建立人员                  */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门              */                               
   CREATE_DATE          DATE,                                      /*建立日期                  */
   MODIFIER             VARCHAR2(12),                              /*修改人员                  */
   MODI_DATE            DATE,                                      /*修改日期                  */
   FLAG                 NUMBER(1),                                 /*资料状态                  */
   constraint PK_TB_SERFD primary key (SERFD_ID)
);
create index AK_TB_SERFD on TB_SERFD (SERFD_ID,SERFD002,SERFD005);
create sequence SEQ_TB_SERFD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERFD to public;
grant index  on TB_SERFD to public;
grant update on TB_SERFD to public; 
grant delete on TB_SERFD to public;  
grant insert on TB_SERFD to public; 
grant select on SEQ_TB_SERFD to public;   