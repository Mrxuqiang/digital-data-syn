/*
================================================================================
表结构代码:TB_SALEK
表结构名称:收银台交款汇总调账前明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALEK;
drop index AK_TB_SALEK;
drop table TB_SALEK;
create table TB_SALEK  (
   SALEK_ID             INTEGER                         not null,  /*首次日结收银台信息ID         */
   SALEK001             INTEGER,                                   /*营运组织ID                   */
   SALEK002             DATE,                                      /*销售日期                     */ 
   SALEK003             VARCHAR(1),                                /*交款类型                     */
   SALEK004             INTEGER,                                   /*收银员ID                     */
   SALEK005             VARCHAR(1),                                /*交易类型                     */
   SALEK006             VARCHAR(30),                               /*销售单号                     */
   SALEK007             VARCHAR(30),                               /*销售凭证                     */
   SALEK008             VARCHAR(30),                               /*交款单号                     */
   SALEK009             VARCHAR(1),                                /*是否参加促销                 */
   SALEK010             DATE,                                      /*账务日期                     */ 
   SALEK011             VARCHAR(30),                               /*交款凭证                     */
   SALEK012             INTEGER,                                   /*摊位ID                       */
   SALEK013             INTEGER,                                   /*商户ID                       */
   SALEK014             INTEGER,                                   /*商户分类                     */
   SALEK015             INTEGER,                                   /*品牌                         */
   SALEK016             INTEGER,                                   /*租赁合同号                   */
   SALEK017             NUMBER(28,2),                              /*销售金额                     */
   SALEK018             NUMBER(28,2),                              /*折扣金额                     */
   SALEK019             INTEGER,                                   /*收付款方式                   */
   SALEK020             NUMBER(28,2),                              /*实交款金额                   */
   SALEK021             NUMBER(28,2),                              /*手续费                       */
   SALEK022             NUMBER(28,2),                              /*溢收金额                     */
   SALEK023             VARCHAR(1),                                /*交款状态                     */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                     */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                 */                               
   CREATE_DATE          DATE,                                      /*建立日期                     */
   MODIFIER             VARCHAR2(12),                              /*修改人员                     */
   MODI_DATE            DATE,                                      /*修改日期                     */
   FLAG                 NUMBER,                                    /*资料状态                     */
   constraint PK_TB_SALEK primary key (SALEK_ID)
);
create unique index AK_TB_SALEK on TB_SALEK (SALEK001,SALEK002,FLAG);
create sequence SEQ_TB_SALEK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALEK to public;
grant index  on TB_SALEK to public;
grant update on TB_SALEK to public; 
grant delete on TB_SALEK to public;  
grant insert on TB_SALEK to public; 
grant select on SEQ_TB_SALEK to public;   