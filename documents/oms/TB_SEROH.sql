/*
================================================================================
表结构代码:TB_SEROH
表结构名称:展厅促销申请
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SEROH;
drop index AK_TB_SEROH;
drop table TB_SEROH;
create table TB_SEROH  (
   SEROH_ID             INTEGER                         not null,  /*展厅促销申请ID*/
   SEROH001             INTEGER                         not null,  /*单别          */
   SEROH002             VARCHAR2(30)                    not null,  /*申请单号      */
   SEROH003             DATE                            not null,  /*申请日期      */   
   SEROH004             INTEGER                         not null,  /*商场          */   
   SEROH005             VARCHAR2(100)  ,                           /*申请人        */ 
   SEROH006             VARCHAR2(100) ,                            /*申请联系方式  */  
   SEROH007             INTEGER ,                                  /*展厅ID        */  
   SEROH008             INTEGER ,                                  /*商户ID        */  
   SEROH009             INTEGER ,                                  /*合同ID        */  
   SEROH010             DATE,                                      /*活动开始日期  */  
   SEROH011             DATE,                                      /*活动结束日期  */  
   SEROH012             VARCHAR2(2000) ,                           /*活动主题      */  
   SEROH013             VARCHAR2(2000),                            /*备注          */  
   SEROH014             INTEGER,                                   /*录入人ID      */  
   SEROH015             VARCHAR2(30) ,                             /*录入日期      */  
   SEROH016             INTEGER ,                                  /*审核人ID      */  
   SEROH017             VARCHAR2(30) ,                             /*审核日期      */  
   SEROH018             VARCHAR2(30) ,                             /*审核状态      */  
   SEROH019             VARCHAR2(30) ,                             /*审核备注      */  
   SEROH020             VARCHAR2(1) ,                              /*保留字段1     */  
   SEROH021             VARCHAR2(30) ,                             /*保留字段2     */  
   SEROH022             VARCHAR2(100) ,                            /*保留字段3     */  
   SEROH023             VARCHAR2(1) ,                              /*保留字段4     */  
   SEROH024             VARCHAR2(100) ,                            /*保留字段5     */  
   SEROH025             VARCHAR2(30) ,                             /*保留字段6     */  
   SEROH026             VARCHAR2(1) ,                              /*保留字段7     */  
   SEROH027             VARCHAR2(1) ,                              /*保留字段8     */  
   SEROH028             VARCHAR2(1) ,                              /*保留字段9     */  
   SEROH029             VARCHAR2(1) ,                              /*保留字段10    */  
   CREATE_USER          VARCHAR2(12),                              /*建立人员      */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门  */                               
   CREATE_DATE          DATE,                                      /*建立日期      */
   MODIFIER             VARCHAR2(12),                              /*修改人员      */
   MODI_DATE            DATE,                                      /*修改日期      */
   FLAG                 NUMBER(1),                                 /*资料状态      */
   constraint PK_TB_SEROH primary key (SEROH_ID)
);
create unique index AK_TB_SEROH on TB_SEROH (SEROH001,SEROH002,FLAG);
create sequence SEQ_TB_SEROH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEROH to public;
grant index  on TB_SEROH to public;
grant update on TB_SEROH to public; 
grant delete on TB_SEROH to public;  
grant insert on TB_SEROH to public; 
grant select on SEQ_TB_SEROH to public;   