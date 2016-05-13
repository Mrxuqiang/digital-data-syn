/*
================================================================================
表结构代码:TB_SALCC
表结构名称:订单交款定金表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALCC;
drop index AK_TB_SALCC;
drop table TB_SALCC;
create table TB_SALCC  (
   SALCC_ID             INTEGER                         not null,  /*订单交款定金ID   */
   SALCC001             INTEGER                         not null,  /*交款单ID         */
   SALCC002             INTEGER                         not null,  /*销售订单ID       */
   SALCC003             NUMBER(12,2),                              /*订金金额         */
   SALCC004             NUMBER(12,2),                              /*已退金额         */
   SALCC005             NUMBER(12,2),                              /*已冲金额         */
   SALCC006             NUMBER(12,2),                              /*订金余额         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SALCC primary key (SALCC_ID)
);
create index AK_TB_SALCC on TB_SALCC (SALCC001,SALCC002);
create sequence SEQ_TB_SALCC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALCC to public;
grant index  on TB_SALCC to public;
grant update on TB_SALCC to public; 
grant delete on TB_SALCC to public;  
grant insert on TB_SALCC to public; 
grant select on SEQ_TB_SALCC to public;   