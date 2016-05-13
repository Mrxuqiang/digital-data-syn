/*
================================================================================
表结构代码:TB_PUBRQ
表结构名称:汇兑损益科目表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBRQ;
drop index AK_TB_PUBRQ;
drop table TB_PUBRQ;
create table TB_PUBRQ  (
   PUBRQ_ID             INTEGER                         not null,  /*汇兑损益科目ID   */
   PUBRQ001             INTEGER                         not null,  /*汇兑损益主ID     */
   PUBRQ002             INTEGER                         not null,  /*科目编码ID       */
   PUBRQ003             VARCHAR2(30)                    not null,  /*科目名称         */
   PUBRQ004             VARCHAR2(20),                              /*转入辅助核算项标识   */
   PUBRQ005             VARCHAR2(20),                              /*转出辅助核算项标识   */
   PUBRQ006             INTEGER                         not null,  /*币种ID           */
   PUBRQ007             VARCHAR2(1)                     not null,  /*是否计算汇兑损益 */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_PUBRQ primary key (PUBRQ_ID)
);
create unique index AK_TB_PUBRQ on TB_PUBRQ (PUBRQ001,PUBRQ002);
create sequence SEQ_TB_PUBRQ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRQ to public;
grant index  on TB_PUBRQ to public;
grant update on TB_PUBRQ to public; 
grant delete on TB_PUBRQ to public;  
grant insert on TB_PUBRQ to public; 
grant select on SEQ_TB_PUBRQ to public;   