/*
================================================================================
表结构代码:TB_BANAA
表结构名称:对账账户表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BANAA;
drop index AK_TB_BANAA;
drop table TB_BANAA;
create table TB_BANAA  (
   BANAA_ID             INTEGER                         not null,  /*银行初始化ID         */
   BANAA001             VARCHAR2(10)                    not null,  /*账户编号             */
   BANAA002             VARCHAR2(30)                    not null,  /*账户名称             */
   BANAA003             VARCHAR2(1)                     not null,  /*账户数据来源         */
   BANAA004             INTEGER,                                   /*银行账户ID             */
   BANAA005             INTEGER,                                   /*会计主体账簿ID         */
   BANAA006             INTEGER,                                   /*科目ID                 */
   BANAA007             VARCHAR2(20),                              /*辅助核算项标识           */
   BANAA008             INTEGER                         not null,  /*币种                 */
   BANAA009             NUMBER(16,2) ,                             /*银行对账单借方余额   */
   BANAA010             NUMBER(16,2) ,                             /*银行对账单贷方余额   */
   BANAA011             VARCHAR2(1)                     not null,  /*对账标准             */
   BANAA012             DATE,                                      /*启用日期             */   
   CREATE_USER          VARCHAR2(12),                              /*建立人员              */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门          */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_BANAA primary key (BANAA_ID)
);
create unique index AK_TB_BANAA on TB_BANAA (BANAA001,BANAA002,BANAA004,BANAA005);
create sequence SEQ_TB_BANAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BANAA to public;
grant index  on TB_BANAA to public;
grant update on TB_BANAA to public; 
grant delete on TB_BANAA to public;  
grant insert on TB_BANAA to public; 
grant select on SEQ_TB_BANAA to public;   