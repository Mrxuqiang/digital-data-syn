/*
================================================================================
表结构代码:TB_GLDAE
表结构名称:凭证分录表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GLDAE;
drop index AK_TB_GLDAE;
drop table TB_GLDAE;
create table TB_GLDAE  (
   GLDAE_ID             INTEGER                         not null,   /*凭证分录ID                */
   GLDAE001             INTEGER                         not null,   /*凭证ID                    */
   GLDAE002             NUMBER(6),                                  /*预留字段                      */
   GLDAE003             VARCHAR2(255)                   not null,   /*摘要                      */
   GLDAE004             INTEGER                         not null,   /*科目ID                    */
   GLDAE005             INTEGER                         not null,   /*币种ID                    */
   GLDAE006             VARCHAR(20),                                /*辅助核算标识              */
   GLDAE007             NUMBER(12,2),                               /*单价                      */
   GLDAE008             NUMBER(16,7),                               /*汇率1                     */
   GLDAE009             NUMBER(16,7),                               /*汇率2                     */
   GLDAE010             NUMBER(18,3),                               /*借方数量                   */
   GLDAE011             NUMBER(16,2),                               /*原币借方发生额             */
   GLDAE012             NUMBER(16,2),                               /*辅币借方发生额             */
   GLDAE013             NUMBER(16,2),                               /*本币借方发生额             */
   GLDAE014             NUMBER(18,3),                               /*贷方数量                   */
   GLDAE015             NUMBER(16,2),                               /*原币贷方发生额             */
   GLDAE016             NUMBER(16,2),                               /*辅币贷方发生额             */
   GLDAE017             NUMBER(16,2),                               /*本币贷方发生额             */
   GLDAE018             VARCHAR2(255),                              /*备注                       */
   CREATE_USER          VARCHAR2(12),                               /*建立人员                   */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门               */                               
   CREATE_DATE          DATE,                                       /*建立日期                   */
   MODIFIER             VARCHAR2(12),                               /*修改人员                   */
   MODI_DATE            DATE,                                       /*修改日期                   */
   FLAG                 NUMBER(1),                                  /*资料状态                   */
   constraint PK_TB_GLDAE primary key (GLDAE_ID)
);
create unique index AK_TB_GLDAE on TB_GLDAE (GLDAE001,GLDAE002);
create sequence SEQ_TB_GLDAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GLDAE to public;
grant index  on TB_GLDAE to public;
grant update on TB_GLDAE to public; 
grant delete on TB_GLDAE to public;  
grant insert on TB_GLDAE to public; 
grant select on SEQ_TB_GLDAE to public;   