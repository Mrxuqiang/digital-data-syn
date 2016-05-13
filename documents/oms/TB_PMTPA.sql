/*
================================================================================
表结构代码:TB_PMTPA
表结构名称:活动赠品回收单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTPA;
drop index AK_TB_PMTPA;
drop table TB_PMTPA;
create table TB_PMTPA  (
   PMTPA_ID             INTEGER                         not null,  /*活动赠品回收单ID             */
   PMTPA001             INTEGER                         not null,  /*单别ID                       */
   PMTPA002             VARCHAR2(30)                    not null,  /*回收单号                     */
   PMTPA003             DATE                            not null,  /*回收日期                     */
   PMTPA004             VARCHAR2(30),                              /*客户姓名                     */
   PMTPA005             VARCHAR2(30),                              /*客户电话                     */
   PMTPA006             INTEGER                         not null,  /*回收营运组织                 */
   PMTPA007             INTEGER                         not null,  /*回收部门ID                   */
   PMTPA008             INTEGER                         not null,  /*回收人员ID                   */
   PMTPA009             VARCHAR2(255),                             /*备注                         */
   PMTPA010             VARCHAR2(1),                               /*回收类型                     */
   PMTPA011             INTEGER,                                   /*回收仓库                     */
   PMTPA012             INTEGER,                                   /*录入人ID                     */
   PMTPA013             DATE,                                      /*录入日期                     */
   PMTPA014             INTEGER,                                   /*审核人ID                     */
   PMTPA015             DATE,                                      /*审核日期                     */
   PMTPA016             VARCHAR2(1)                     not null,  /*审核状态                     */
   PMTPA017             VARCHAR2(1)                     not null,  /*销退类型 1.订单销退 2.销售退货 */
   PMTPA018             INTEGER                         not null,  /*来源单据ID                   */   
   PMTPA019             VARCHAR2(30)                    not null,  /*来源单号                     */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                     */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                 */                               
   CREATE_DATE          DATE,                                      /*建立日期                     */
   MODIFIER             VARCHAR2(12),                              /*修改人员                     */
   MODI_DATE            DATE,                                      /*修改日期                     */
   FLAG                 NUMBER(1),                                 /*资料状态                     */
   constraint PK_TB_PMTPA primary key (PMTPA_ID)				                  
);
create unique index AK_TB_PMTPA on TB_PMTPA (PMTPA002);
create sequence SEQ_TB_PMTPA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTPA to public;
grant index  on TB_PMTPA to public;
grant update on TB_PMTPA to public; 
grant delete on TB_PMTPA to public;  
grant insert on TB_PMTPA to public; 
grant select on SEQ_TB_PMTPA to public;   