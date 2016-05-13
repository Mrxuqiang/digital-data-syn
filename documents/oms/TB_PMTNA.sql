/*
================================================================================
表结构代码:TB_PMTNA
表结构名称:券回收单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTNA;
drop index AK_TB_PMTNA;
drop table TB_PMTNA;
create table TB_PMTNA  (
   PMTNA_ID             INTEGER                         not null,  /*券回收单ID                   */
   PMTNA001             INTEGER                         not null,  /*单别ID                       */
   PMTNA002             VARCHAR2(30)                    not null,  /*回收单号                     */
   PMTNA003             DATE                            not null,  /*回收日期                     */
   PMTNA004             VARCHAR2(30),                              /*客户姓名                     */
   PMTNA005             VARCHAR2(30),                              /*客户电话                     */
   PMTNA006             INTEGER                         not null,  /*回收营运组织                 */
   PMTNA007             INTEGER                         ,          /*回收部门ID                   */
   PMTNA008             INTEGER                         ,          /*回收人员ID                   */
   PMTNA009             VARCHAR2(255),                             /*备注                         */
   PMTNA010             NUMBER(30),                                /*消费券卡号                   */
   PMTNA011             NUMBER(12,2),                              /*消费券卡余额                 */
   PMTNA012             INTEGER,                                   /*录入人ID                     */
   PMTNA013             DATE,                                      /*录入日期                     */
   PMTNA014             INTEGER,                                   /*审核人ID                     */
   PMTNA015             DATE,                                      /*审核日期                     */
   PMTNA016             VARCHAR2(1)                     not null,  /*审核状态                     */
   PMTNA017             VARCHAR2(1)                             ,  /*销退类型 1.订单销退 2.销售退货*/
   PMTNA018             INTEGER                                 ,  /*来源单据ID                   */   
   PMTNA019             VARCHAR2(30)                            ,  /*来源单号                     */
   PMTNA020             INTEGER                         not null,  /*劵发放单ID                   */
   PMTNA021             VARCHAR2(2)                     not null,  /*促销类型                     */
   PMTNA022             INTEGER                         not null,  /*卷种ID                       */
   PMTNA023             NUMBER(22,2)                             ,  /*应返券金额合计                  */
   PMTNA024             NUMBER(22,2)                              ,  /*实返券金额合计                  */
   PMTNA025             NUMBER(22,2)                            ,  /*已回收券金额                    */
   PMTNA026             NUMBER(22,2)                            ,  /*本次应回收券金额                */
   PMTNA027             NUMBER(22,2)                            ,  /*实回收券金额合计                */
   PMTNA028             NUMBER(22,2)                            ,  /*现金抵券金额                    */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                     */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                 */                               
   CREATE_DATE          DATE,                                      /*建立日期                     */
   MODIFIER             VARCHAR2(12),                              /*修改人员                     */
   MODI_DATE            DATE,                                      /*修改日期                     */
   FLAG                 NUMBER(1),                                 /*资料状态                     */
   constraint PK_TB_PMTNA primary key (PMTNA_ID)				                  
);
create unique index AK_TB_PMTNA on TB_PMTNA (PMTNA002);
create sequence SEQ_TB_PMTNA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTNA to public;
grant index  on TB_PMTNA to public;
grant update on TB_PMTNA to public; 
grant delete on TB_PMTNA to public;  
grant insert on TB_PMTNA to public; 
grant select on SEQ_TB_PMTNA to public;   