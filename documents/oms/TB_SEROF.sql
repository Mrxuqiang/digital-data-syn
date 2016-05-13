/*
================================================================================
表结构代码:TB_SEROF
表结构名称:营业员离职申请表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SEROF;
drop index AK_TB_SEROF;
drop table TB_SEROF;
create table TB_SEROF (
   SEROF_ID             INTEGER                         not null,  /*营业员离职申请单ID                     */
   SEROF001             INTEGER                         not null,  /*单别                                   */
   SEROF002             VARCHAR2(30)                    not null,  /*申请单号                               */
   SEROF003             DATE                            not null,  /*申请日期                               */ 
   SEROF004             DATE                            not null,  /*离职日期                               */
   SEROF005             INTEGER                         not null,  /*商场                                   */   
   SEROF006             INTEGER ,                                  /*展厅                                   */ 
   SEROF007             INTEGER ,                                  /*商户                                   */  
   SEROF008             INTEGER ,                                  /*租赁合同                               */
   SEROF009             VARCHAR2(60) ,                             /*营业员工号                             */  
   SEROF010             VARCHAR2(30) ,                             /*营业员姓名                             */  
   SEROF011             VARCHAR2(30) ,                             /*性别                                   */
   SEROF012             VARCHAR2(30) ,                             /*联系电话                               */ 
   SEROF013             VARCHAR2(1000) ,                           /*备注                                   */ 
   SEROF014             VARCHAR2(250) ,                            /*保留字段1                              */  
   SEROF015             VARCHAR2(250) ,                            /*保留字段2                              */  
   SEROF016             VARCHAR2(250) ,                            /*保留字段3                              */  
   SEROF017             VARCHAR2(250) ,                            /*保留字段4                              */
   SEROF018             VARCHAR2(250) ,                            /*保留字段5                              */  
   SEROF019             VARCHAR2(250) ,                            /*保留字段6                              */  
   SEROF020             VARCHAR2(250) ,                            /*保留字段7                              */  
   SEROF021             VARCHAR2(250) ,                            /*保留字段8                              */  
   SEROF022             VARCHAR2(250) ,                            /*保留字段9                              */  
   SEROF023             VARCHAR2(250) ,                            /*保留字段10                             */
   SEROF024             INTEGER ,                                  /*录入人                                 */  
   SEROF025             DATE ,                                     /*录入日期                               */  
   SEROF026             INTEGER ,                                  /*审核人                                 */  
   SEROF027             DATE ,                                     /*审核日期                               */  
   SEROF028             VARCHAR2(1) ,                              /*单据状态                               */  
   CREATE_USER          VARCHAR2(12),                              /*建立人员                               */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                           */                               
   CREATE_DATE          DATE,                                      /*建立日期                               */
   MODIFIER             VARCHAR2(12),                              /*修改人员                               */
   MODI_DATE            DATE,                                      /*修改日期                               */
   FLAG                 NUMBER(1),                                 /*资料状态                               */
   constraint PK_TB_SEROF primary key (SEROF_ID)
);
create sequence SEQ_TB_SEROF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEROF to public;
grant index  on TB_SEROF to public;
grant update on TB_SEROF to public; 
grant delete on TB_SEROF to public;  
grant insert on TB_SEROF to public; 
grant select on SEQ_TB_SEROF to public;   