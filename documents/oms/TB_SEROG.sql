/*
================================================================================
表结构代码:TB_SEROG
表结构名称:楼层日常管理审批表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SEROG;
drop index AK_TB_SEROG;
drop table TB_SEROG;
create table TB_SEROG  (
   SEROG_ID             INTEGER                         not null,  /*审批记录单ID */
   SEROG001             VARCHAR2(2)                     not null,  /*业务单据类型 */
   SEROG002             INTEGER                         not null,  /*业务单据ID   */
   SEROG003             VARCHAR2(30)                    not null,  /*业务单据号   */   
   SEROG004             DATE                            not null,  /*申请日期     */   
   SEROG005             INTEGER ,                                  /*申请人ID     */ 
   SEROG006             VARCHAR2(30) ,                             /*申请人编码   */  
   SEROG007             VARCHAR2(120) ,                            /*申请人名称   */  
   SEROG008             VARCHAR2(500) ,                            /*申请人备注   */  
   SEROG009             INTEGER ,                                  /*展厅ID       */  
   SEROG010             VARCHAR2(30) ,                             /*展厅编码     */  
   SEROG011             VARCHAR2(120) ,                            /*展厅名称     */  
   SEROG012             INTEGER ,                                  /*商户ID       */  
   SEROG013             VARCHAR2(30) ,                             /*商户编码     */  
   SEROG014             VARCHAR2(120) ,                            /*商户名称     */  
   SEROG015             INTEGER ,                                  /*租赁合同ID   */  
   SEROG016             VARCHAR2(30) ,                             /*租赁合同号   */  
   SEROG017             VARCHAR2(255) ,                            /*营业员编码   */  
   SEROG018             VARCHAR2(255) ,                            /*营业员账号     */  
   SEROG019             VARCHAR2(255) ,                            /*营业员姓名    */  
   SEROG020             Integer ,                                  /*营业员角色    */  
   SEROG021             VARCHAR2(255) ,                            /*审批备注     */  
   SEROG022             VARCHAR2(255) ,                            /*保留字段6    */  
   SEROG023             VARCHAR2(255) ,                            /*保留字段7    */  
   SEROG024             VARCHAR2(255) ,                            /*保留字段8    */  
   SEROG025             VARCHAR2(255) ,                            /*保留字段9    */  
   SEROG026             VARCHAR2(255) ,                            /*保留字段10   */ 
   SEROG027             INTEGER ,                                  /*审核人       */  
   SEROG028             DATE ,                                     /*审核日期     */  
   SEROG029             VARCHAR2(1) ,                              /*单据状态     */       
   CREATE_USER          VARCHAR2(12),                              /*建立人员     */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门 */                               
   CREATE_DATE          DATE,                                      /*建立日期     */
   MODIFIER             VARCHAR2(12),                              /*修改人员     */
   MODI_DATE            DATE,                                      /*修改日期     */
   FLAG                 NUMBER(1),                                 /*资料状态     */
   constraint PK_TB_SEROG primary key (SEROG_ID)
);
create sequence SEQ_TB_SEROG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEROG to public;
grant index  on TB_SEROG to public;
grant update on TB_SEROG to public; 
grant delete on TB_SEROG to public;  
grant insert on TB_SEROG to public; 
grant select on SEQ_TB_SEROG to public;   