/*
================================================================================
表结构代码:TB_BILFD
表结构名称:促销费用分摊单分摊明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILFD;
drop index AK_TB_BILFD;
drop table TB_BILFD;
create table TB_BILFD  (
   BILFD_ID             INTEGER                         not null,  /*促销费用分摊单分摊明细ID   */
   BILFD001             INTEGER                         not null,  /*促销费用分摊单ID           */
   BILFD002             VARCHAR2(1)                     not null,  /*分摊类型1.折扣2.返券3.送赠 */
   BILFD003             INTEGER                         not null,  /*促销单ID                   */
   BILFD004             INTEGER                         not null,  /*摊位ID                     */
   BILFD005             INTEGER                         not null,  /*商户ID                     */
   BILFD006             NUMBER(12,2),                              /*促销金额                   */ 
   BILFD007             NUMBER(12,2),                              /*销售净额                   */ 
   BILFD008             NUMBER(12,2),                              /*交款净额                   */ 
   BILFD009             NUMBER(12,2),                              /*促销分摊金额               */ 
   BILFD010             NUMBER(12,2),                              /*促销差异金额               */ 
   BILFD011             NUMBER(12,2),                              /*销售净额差异金额           */ 
   BILFD012             NUMBER(12,2),                              /*交款净额差异金额           */ 
   BILFD013             NUMBER(12,2),                              /*促销分摊差异金额(公司承担) */ 
   BILFD014             NUMBER(12,2),                              /*促销分摊差异金额(商家承担) */
   BILFD015             NUMBER(5),                                 /*试算次数                   */ 
   BILFD016             VARCHAR2(2)                     not null,  /*促销类型                   */   
   BILFD017             VARCHAR2(30)                               /*促销单号                   */
   BILFD018             INTEGER,                                   /*合同号ID                   */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                   */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门               */                               
   CREATE_DATE          DATE,                                      /*建立日期                   */
   MODIFIER             VARCHAR2(12),                              /*修改人员                   */
   MODI_DATE            DATE,                                      /*修改日期                   */
   FLAG                 NUMBER(1),                                 /*资料状态                   */
   constraint PK_TB_BILFD primary key (BILFD_ID)
);
create unique index AK_TB_BILFD on TB_BILFD (BILFD001,BILFD002,BILFD003,BILFD004,BILFD005);
create sequence SEQ_TB_BILFD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILFD to public;
grant index  on TB_BILFD to public;
grant update on TB_BILFD to public; 
grant delete on TB_BILFD to public;  
grant insert on TB_BILFD to public; 
grant select on SEQ_TB_BILFD to public;   