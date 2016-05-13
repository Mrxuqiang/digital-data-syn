/*
================================================================================
表结构代码:TB_GLDAH
表结构名称:外部折算临时凭证表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GLDAH;
drop index AK_TB_GLDAH;
drop table TB_GLDAH;
create table TB_GLDAH  (
   GLDAH_ID             INTEGER                         not null,   /*临时凭证ID                */
   GLDAH001             INTEGER                          not null,   /*外部折算ID                    */
   GLDAH002             VARCHAR2(5) ,                               /*序号                      */
   GLDAH003             VARCHAR2(255)                   not null,   /*摘要                      */
   GLDAH004             INTEGER                         not null,   /*科目编码ID                    */
   GLDAH005             INTEGER                         not null,   /*币种ID                    */
   GLDAH006             VARCHAR2(20)                     not null,   /*辅助核算项标识                  */
   GLDAH007             NUMBER(16,2),                               /*单价                      */
   GLDAH008             NUMBER(16,4),                                /*汇率1                     */
   GLDAH009             NUMBER(16,4),                                /*汇率2                     */
   GLDAH010             NUMBER(18,3),                               /*借方数量                   */
   GLDAH011             NUMBER(16,2),                               /*原币借方发生额             */
   GLDAH012             NUMBER(16,2),                               /*辅币借方发生额             */
   GLDAH013             NUMBER(16,2),                               /*本币借方发生额             */
   GLDAH014             NUMBER(18,3),                               /*贷方数量                   */
   GLDAH015             NUMBER(16,2),                               /*原币贷方发生额             */
   GLDAH016             NUMBER(16,2),                                /*辅币贷方发生额             */
   GLDAH017             NUMBER(16,2),                                /*本币贷方发生额             */
   GLDAH018             VARCHAR2(255),                              /*备注                       */
   CREATE_USER          VARCHAR2(12),                               /*建立人员                   */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门               */                               
   CREATE_DATE          DATE,                                       /*建立日期                   */
   MODIFIER             VARCHAR2(12),                               /*修改人员                   */
   MODI_DATE            DATE,                                       /*修改日期                   */
   FLAG                 NUMBER(1),                                  /*资料状态                   */
   constraint PK_TB_GLDAH primary key (GLDAH_ID)
);
create sequence SEQ_TB_GLDAH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GLDAH to public;
grant index  on TB_GLDAH to public;
grant update on TB_GLDAH to public; 
grant delete on TB_GLDAH to public;  
grant insert on TB_GLDAH to public; 
grant select on SEQ_TB_GLDAH to public;   