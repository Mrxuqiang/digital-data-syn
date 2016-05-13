/*
================================================================================
表结构代码:TB_AWBBC
表结构名称:临时分录表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_AWBBC;
drop index AK_TB_AWBBC;
drop table TB_AWBBC;
create table TB_AWBBC  (
   AWBBC_ID             INTEGER                         not null,   /*临时分录ID                */
   AWBBC001             INTEGER                         not null,   /*临时凭证ID                    */
   AWBBC002             NUMBER(6),                                  /*预留字段                      */
   AWBBC003             VARCHAR2(255)                   not null,   /*摘要                      */
   AWBBC004             INTEGER                         not null,   /*科目ID                    */
   AWBBC005             INTEGER                         not null,   /*币种ID                    */
   AWBBC006             VARCHAR(20),                                /*辅助核算标识              */
   AWBBC007             NUMBER(12,2),                               /*单价                      */
   AWBBC008             NUMBER(5,4),                                /*汇率1                     */
   AWBBC009             NUMBER(5,4),                                /*汇率2                     */
   AWBBC010             NUMBER(18,3),                               /*借方数量                   */
   AWBBC011             NUMBER(16,2),                               /*原币借方发生额             */
   AWBBC012             NUMBER(16,2),                               /*辅币借方发生额             */
   AWBBC013             NUMBER(16,2),                               /*本币借方发生额             */
   AWBBC014             NUMBER(18,3),                               /*贷方数量                   */
   AWBBC015             NUMBER(16,2),                               /*原币贷方发生额             */
   AWBBC016             NUMBER(16,2),                               /*辅币贷方发生额             */
   AWBBC017             NUMBER(16,2),                               /*本币贷方发生额             */
   AWBBC018             VARCHAR2(255),                              /*备注                       */
   CREATE_USER          VARCHAR2(12),                               /*建立人员                   */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门               */                               
   CREATE_DATE          DATE,                                       /*建立日期                   */
   MODIFIER             VARCHAR2(12),                               /*修改人员                   */
   MODI_DATE            DATE,                                       /*修改日期                   */
   FLAG                 NUMBER(1),                                  /*资料状态                   */
   constraint PK_TB_AWBBC primary key (AWBBC_ID)
);
create sequence SEQ_TB_AWBBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AWBBC to public;
grant index  on TB_AWBBC to public;
grant update on TB_AWBBC to public; 
grant delete on TB_AWBBC to public;  
grant insert on TB_AWBBC to public; 
grant select on SEQ_TB_AWBBC to public;   