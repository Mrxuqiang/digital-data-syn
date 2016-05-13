/*
================================================================================
表结构代码:TB_GLDAC
表结构名称:各期金额汇总表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GLDAC;
drop index AK_TB_GLDAC;
drop table TB_GLDAC;
create table TB_GLDAC  (
   GLDAC_ID             INTEGER                          not null,  /*各期金额汇总ID               */
   GLDAC001             INTEGER                          not null,  /*核算帐簿ID                   */
   GLDAC002             INTEGER                          not null,  /*公司编码ID                   */
   GLDAC003             INTEGER                          not null,  /*会计主体ID                   */
   GLDAC004             INTEGER                          not null,  /*会计科目ID                   */
   GLDAC005             VARCHAR2(4)                      not null,  /*会计年度                     */
   GLDAC006             VARCHAR2(2)                      not null,  /*会计期间                     */ 
   GLDAC007             INTEGER                          not null,  /*币种ID                       */ 
   GLDAC008             NUMBER(18,3),                               /*借方数量                     */
   GLDAC009             NUMBER(16,2),                               /*原币借方发生额               */
   GLDAC010             NUMBER(16,2),                               /*辅币借方发生额               */
   GLDAC011             NUMBER(16,2),                               /*本币借方发生额               */
   GLDAC012             NUMBER(18,3),                               /*贷方数量                     */
   GLDAC013             NUMBER(16,2),                               /*原币贷方发生额               */ 
   GLDAC014             NUMBER(16,2),                               /*辅币贷方发生额               */
   GLDAC015             NUMBER(16,2),                               /*本币贷方发生额               */ 
   GLDAC016             VARCHAR(20),                                /*辅助核算标识                */   
   CREATE_USER          VARCHAR2(12),                               /*建立人员                     */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门                 */                               
   CREATE_DATE          DATE,                                       /*建立日期                     */
   MODIFIER             VARCHAR2(12),                               /*修改人员                     */
   MODI_DATE            DATE,                                       /*修改日期                     */
   FLAG                 NUMBER(1),                                  /*资料状态                     */
   constraint PK_TB_GLDAC primary key (GLDAC_ID)
);
create unique index AK_TB_GLDAC on TB_GLDAC (GLDAC001,GLDAC002,GLDAC004,GLDAC005,GLDAC006,GLDAC007,GLDAC016);
create sequence SEQ_TB_GLDAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GLDAC to public;
grant index  on TB_GLDAC to public;
grant update on TB_GLDAC to public; 
grant delete on TB_GLDAC to public;  
grant insert on TB_GLDAC to public; 
grant select on SEQ_TB_GLDAC to public;   