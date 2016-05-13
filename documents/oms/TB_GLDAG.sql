/*
================================================================================
表结构代码:TB_GLDAG
表结构名称:外部折算发生主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GLDAG;
drop index AK_TB_GLDAG;
drop table TB_GLDAG;
create table TB_GLDAG  (
   GLDAG_ID             INTEGER                         not null,   /*外部折算发生主ID                */
   GLDAG001             INTEGER                         not null,   /*单别                    */
   GLDAG002             DATE                            not null,   /*外部折算日期                      */
   GLDAG003             INTEGER                         not null,   /*外部折算人ID                      */
   GLDAG004             VARCHAR2(1)                     not null,   /*外部折算状态                    */
   GLDAG005             INTEGER                         not null,   /*外部折算规则ID                    */
   GLDAG006             INTEGER    ,                                /*确认人ID                  */
   GLDAG007             DATE,                                       /*确认时间                      */
   GLDAG008             INTEGER                        not null,    /*对方凭证ID                     */
   GLDAG009             INTEGER,                                     /*本方凭证ID                     */
   GLDAG010             INTEGER,                                    /*本方凭证临时ID                   */
   GLDAG011             INTEGER                        not null,    /*本方主体账簿ID             */
   GLDAG012             INTEGER                        not null,    /*本方公司ID             */
   GLDAG013             INTEGER                        not null,    /*对方主体账簿ID             */
   GLDAG014             INTEGER                        not null,    /*对方公司ID                   */
   GLDAG015             INTEGER                        not null,    /*本方凭证类别ID             */
   GLDAG016             NUMBER(16,2),                                /*本方借方合计             */
   GLDAG017             NUMBER(16,2) ,                               /*本方贷方合计             */
   GLDAG018             DATE                           not null,    /*本方凭证制单日期                       */
   GLDAG019             VARCHAR2(255),                              /*备注                       */
   GLDAG020             VARCHAR2(30),                               /*单号                       */
   GLDAG021             NUMBER(4),                                  /*会计年度                */
   GLDAG022             NUMBER(2),                                  /*会计期间                 */
   CREATE_USER          VARCHAR2(12),                               /*建立人员                   */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门               */                               
   CREATE_DATE          DATE,                                       /*建立日期                   */
   MODIFIER             VARCHAR2(12),                               /*修改人员                   */
   MODI_DATE            DATE,                                       /*修改日期                   */
   FLAG                 NUMBER(1),                                  /*资料状态                   */
   constraint PK_TB_GLDAG primary key (GLDAG_ID)
);
create unique index AK_TB_GLDAG on TB_GLDAG (GLDAG001,GLDAG0020);
create sequence SEQ_TB_GLDAG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GLDAG to public;
grant index  on TB_GLDAG to public;
grant update on TB_GLDAG to public; 
grant delete on TB_GLDAG to public;  
grant insert on TB_GLDAG to public; 
grant select on SEQ_TB_GLDAG to public;   