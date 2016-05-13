/*
================================================================================
表结构代码:TB_PUBRA
表结构名称:内部折算账簿关联表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBRA;
drop index AK_TB_PUBRA;
drop table TB_PUBRA;
create table TB_PUBRA  (
   PUBRA_ID             INTEGER                         not null,  /*内部折算账簿关联ID         */
   PUBRA001             INTEGER                         not null,  /*会计主体ID                 */
   PUBRA002             VARCHAR2(16)                    not null,  /*编号                       */
   PUBRA003             INTEGER                         not null,  /*来源主体账簿ID             */
   PUBRA004             INTEGER                         not null,  /*目的主体账簿ID             */
   PUBRA005             INTEGER,                                   /*制单人ID                   */
   PUBRA006             INTEGER,                                   /*记账人ID                   */
   PUBRA007             INTEGER,                                   /*出纳ID                     */
   PUBRA008             INTEGER,                                   /*审核人ID                   */
   PUBRA009             VARCHAR2(1)                     not null,  /*生成凭证时自动记账         */
   PUBRA010             VARCHAR2(30) ,                              /*折算名称*/
   PUBRA011             VARCHAR2(1)                     not null,  /*实时折算                   */
   PUBRA012             VARCHAR2(1)                     not null,  /*金额不平处理方式                */
   PUBRA013             INTEGER,                                   /*入补差额科目                */
   PUBRA014             VARCHAR2(1),                               /*预留字段                */
   PUBRA015             VARCHAR2(1)                     not null,  /*制单日期                */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                    */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                */                               
   CREATE_DATE          DATE,                                      /*建立日期                    */
   MODIFIER             VARCHAR2(12),                              /*修改人员                    */
   MODI_DATE            DATE,                                      /*修改日期                    */
   FLAG                 NUMBER(1),                                 /*资料状态                    */
   constraint PK_TB_PUBRA primary key (PUBRA_ID)
);
create unique index AK_TB_PUBRA on TB_PUBRA (PUBRA001,PUBRA002);
create sequence SEQ_TB_PUBRA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRA to public;
grant index  on TB_PUBRA to public;
grant update on TB_PUBRA to public; 
grant delete on TB_PUBRA to public;  
grant insert on TB_PUBRA to public; 
grant select on SEQ_TB_PUBRA to public;   