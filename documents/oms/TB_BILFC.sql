/*
================================================================================
表结构代码:TB_BILFC
表结构名称:促销费用分摊单分摊总表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILFC;
drop index AK_TB_BILFC;
drop table TB_BILFC;
create table TB_BILFC  (
   BILFC_ID             INTEGER                         not null,  /*促销费用分摊单分摊总表ID */
   BILFC001             INTEGER                         not null,  /*促销费用分摊单ID         */
   BILFC002             INTEGER                         not null,  /*摊位ID                   */
   BILFC003             INTEGER                         not null,  /*商户ID                   */
   BILFC004             NUMBER(12,2),                              /*折扣金额                 */ 
   BILFC005             NUMBER(12,2),                              /*返券金额                 */ 
   BILFC006             NUMBER(12,2),                              /*送赠金额                 */ 
   BILFC007             NUMBER(12,2),                              /*折扣分摊金额             */ 
   BILFC008             NUMBER(12,2),                              /*返券分摊金额             */ 
   BILFC009             NUMBER(12,2),                              /*送赠分摊金额             */ 
   BILFC010             NUMBER(12,2),                              /*折扣差异金额             */ 
   BILFC011             NUMBER(12,2),                              /*返券差异金额             */ 
   BILFC012             NUMBER(12,2),                              /*送赠差异金额             */ 
   BILFC013             NUMBER(12,2),                              /*折扣分摊差异金额         */ 
   BILFC014             NUMBER(12,2),                              /*返券分摊差异金额         */ 
   BILFC015             NUMBER(12,2),                              /*送赠分摊差异金额         */ 
   BILFC016             NUMBER(12,2),                              /*总分摊差异金额(公司承担) */ 
   BILFC017             NUMBER(12,2),                              /*总分摊差异金额(商家承担) */
   BILFC018             NUMBER(12,2),                              /*差异促销费用金额         */
   BILFC019             INTEGER,                                   /*费用单ID                 */   
   CREATE_USER          VARCHAR2(12),                              /*建立人员                 */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门             */                               
   CREATE_DATE          DATE,                                      /*建立日期                 */
   MODIFIER             VARCHAR2(12),                              /*修改人员                 */
   MODI_DATE            DATE,                                      /*修改日期                 */
   FLAG                 NUMBER(1),                                 /*资料状态                 */
   constraint PK_TB_BILFC primary key (BILFC_ID)
);
create unique index AK_TB_BILFC on TB_BILFC (BILFC001,BILFC002,BILFC003);
create sequence SEQ_TB_BILFC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILFC to public;
grant index  on TB_BILFC to public;
grant update on TB_BILFC to public; 
grant delete on TB_BILFC to public;  
grant insert on TB_BILFC to public; 
grant select on SEQ_TB_BILFC to public;   