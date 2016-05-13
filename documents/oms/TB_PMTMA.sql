/*
================================================================================
表结构代码:TB_PMTMA
表结构名称:券发放单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTMA;
drop index AK_TB_PMTMA;
drop table TB_PMTMA;
create table TB_PMTMA  (
   PMTMA_ID             INTEGER                         not null,  /*券发放单ID                   */
   PMTMA001             INTEGER                         not null,  /*单别ID                       */
   PMTMA002             VARCHAR2(30)                    not null,  /*发放单号                     */
   PMTMA003             DATE                            not null,  /*发放日期                     */
   PMTMA004             VARCHAR2(30),                              /*客户姓名                     */
   PMTMA005             VARCHAR2(30),                              /*客户电话                     */
   PMTMA006             INTEGER                                 ,  /*发放营运组织                 */
   PMTMA007             INTEGER                                 ,  /*发放部门ID                   */
   PMTMA008             INTEGER                                 ,  /*发放人员ID                   */
   PMTMA009             VARCHAR2(255),                             /*备注                         */
   PMTMA010             NUMBER(30),                                /*消费券卡号                   */
   PMTMA011             NUMBER(12,2),                              /*消费券卡余额                 */
   PMTMA012             INTEGER,                                   /*录入人ID                     */
   PMTMA013             DATE,                                      /*录入日期                     */
   PMTMA014             INTEGER,                                   /*审核人ID                     */
   PMTMA015             DATE,                                      /*审核日期                     */
   PMTMA016             VARCHAR2(1)                     not null,  /*审核状态                     */
   PMTMA017             NUMBER(20,2),                              /*应返券金额合计               */
   PMTMA018             NUMBER(20,2),                              /*实返券金额合计               */
   PMTMA019             INTEGER,                                   /*券种ID                       */
   PMTMA020             INTEGER,                                   /*促销单ID                     */
   PMTMA021             VARCHAR2(2),                               /*促销类型                     */
   PMTMA022             VARCHAR2(1),                                   /*返券方式              */
   PMTMA023             INTEGER,                                   /*应返券张数                   */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                     */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                 */
   CREATE_DATE          DATE,                                      /*建立日期                     */
   MODIFIER             VARCHAR2(12),                              /*修改人员                     */
   MODI_DATE            DATE,                                      /*修改日期                     */
   FLAG                 NUMBER,                                    /*资料状态                     */
   constraint PK_TB_PMTMA primary key (PMTMA_ID)				                  
);
create unique index AK_TB_PMTMA on TB_PMTMA (PMTMA002);
create sequence SEQ_TB_PMTMA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTMA to public;
grant index  on TB_PMTMA to public;
grant update on TB_PMTMA to public; 
grant delete on TB_PMTMA to public;  
grant insert on TB_PMTMA to public; 
grant select on SEQ_TB_PMTMA to public;   