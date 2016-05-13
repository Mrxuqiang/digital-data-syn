/*
================================================================================
表结构代码:TB_PMTQA
表结构名称:活动抽奖单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTQA;
drop index AK_TB_PMTQA;
drop table TB_PMTQA;
create table TB_PMTQA  (
   PMTQA_ID             INTEGER                         not null,  /*活动抽奖单ID                 */
   PMTQA001             INTEGER                         not null,  /*单别ID                       */
   PMTQA002             VARCHAR2(30)                    not null,  /*抽奖单号                     */
   PMTQA003             DATE                            not null,  /*抽奖日期                     */
   PMTQA004             VARCHAR2(30),                              /*客户姓名                     */
   PMTQA005             VARCHAR2(30),                              /*客户电话                     */
   PMTQA006             INTEGER                         not null,  /*发放营运组织                 */
   PMTQA007             INTEGER                         not null,  /*发放部门ID                   */
   PMTQA008             INTEGER                         not null,  /*发放人员ID                   */
   PMTQA009             VARCHAR2(1),                               /*促销类型                     */
   PMTQA010             VARCHAR2(30),                              /*促销单号                     */   
   PMTQA011             INTEGER,                                   /*促销单号ID                   */
   PMTQA012             NUMBER(5,0),                               /*可抽奖次数                   */
   PMTQA013             VARCHAR2(255),                             /*备注                         */
   PMTQA014             INTEGER,                                   /*录入人ID                     */
   PMTQA015             DATE,                                      /*录入日期                     */
   PMTQA016             INTEGER,                                   /*审核人ID                     */
   PMTQA017             DATE,                                      /*审核日期                     */
   PMTQA018             VARCHAR2(1)                     not null,  /*审核状态                     */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                     */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                 */                               
   CREATE_DATE          DATE,                                      /*建立日期                     */
   MODIFIER             VARCHAR2(12),                              /*修改人员                     */
   MODI_DATE            DATE,                                      /*修改日期                     */
   FLAG                 NUMBER(1),                                 /*资料状态                     */
   constraint PK_TB_PMTQA primary key (PMTQA_ID)				                  
);
create unique index AK_TB_PMTQA on TB_PMTQA (PMTQA002);
create sequence SEQ_TB_PMTQA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTQA to public;
grant index  on TB_PMTQA to public;
grant update on TB_PMTQA to public; 
grant delete on TB_PMTQA to public;  
grant insert on TB_PMTQA to public; 
grant select on SEQ_TB_PMTQA to public;   