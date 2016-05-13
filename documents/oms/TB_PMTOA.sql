/*
================================================================================
表结构代码:TB_PMTOA
表结构名称:活动赠品发放单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTOA;
drop index AK_TB_PMTOA;
drop table TB_PMTOA;
create table TB_PMTOA  (
   PMTOA_ID             INTEGER                         not null,  /*活动赠品发放单ID             */
   PMTOA001             INTEGER                         not null,  /*单别ID                       */
   PMTOA002             VARCHAR2(30)                    not null,  /*发放单号                     */
   PMTOA003             DATE                            not null,  /*发放日期                     */
   PMTOA004             VARCHAR2(30),                              /*客户姓名                     */
   PMTOA005             VARCHAR2(30),                              /*客户电话                     */
   PMTOA006             INTEGER                         not null,  /*发放营运组织                 */
   PMTOA007             INTEGER                         not null,  /*发放部门ID                   */
   PMTOA008             INTEGER                         not null,  /*发放人员ID                   */
   PMTOA009             VARCHAR2(255),                             /*备注                         */
   PMTOA010             VARCHAR2(1),                               /*发放类型                     */
   PMTOA011             INTEGER,                                   /*出库仓库                     */
   PMTOA012             INTEGER,                                   /*录入人ID                     */
   PMTOA013             DATE,                                      /*录入日期                     */
   PMTOA014             INTEGER,                                   /*审核人ID                     */
   PMTOA015             DATE,                                      /*审核日期                     */
   PMTOA016             VARCHAR2(1)                     not null,  /*审核状态                     */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                     */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                 */                               
   CREATE_DATE          DATE,                                      /*建立日期                     */
   MODIFIER             VARCHAR2(12),                              /*修改人员                     */
   MODI_DATE            DATE,                                      /*修改日期                     */
   FLAG                 NUMBER(1),                                 /*资料状态                     */
   constraint PK_TB_PMTOA primary key (PMTOA_ID)				                  
);
create unique index AK_TB_PMTOA on TB_PMTOA (PMTOA002);
create sequence SEQ_TB_PMTOA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTOA to public;
grant index  on TB_PMTOA to public;
grant update on TB_PMTOA to public; 
grant delete on TB_PMTOA to public;  
grant insert on TB_PMTOA to public; 
grant select on SEQ_TB_PMTOA to public;   