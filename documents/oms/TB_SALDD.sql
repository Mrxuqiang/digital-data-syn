/*
================================================================================
表结构代码:TB_SALDD
表结构名称:退预收单付款别表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALDD;
drop index AK_TB_SALDD;
drop table TB_SALDD;
create table TB_SALDD  (
   SALDD_ID             INTEGER                         not null,  /*退预收单付款ID   */
   SALDD001             INTEGER                         not null,  /*退预收单ID       */
   SALDD002             INTEGER                         not null,  /*结算方式ID       */
   SALDD003             NUMBER(12,2)                    not null,  /*退预收金额       */
   SALDD004             NUMBER(12,2),                              /*退预收手续费     */
   SALDD005             NUMBER(12,2),                              /*溢收金额         */
   SALDD006             VARCHAR2(30),                              /*银行卡号         */
   SALDD007             INTEGER,                                   /*手续费率ID       */
   SALDD008             NUMBER(12,2),                              /*手续费率(%)      */
   SALDD009             VARCHAR2(30),                              /*支票号           */
   SALDD010             NUMBER(12,2),                              /*票面金额         */
   SALDD011             DATE,                                      /*出票日期         */
   SALDD012             VARCHAR2(60),                              /*出票单位         */
   SALDD013             NUMBER(30),                                /*消费卡号         */
   SALDD014             INTEGER,                                   /*预收单ID         */
   SALDD015             INTEGER,                                   /*预收单明细ID     */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SALDD primary key (SALDD_ID)
);
create index AK_TB_SALDD on TB_SALDD (SALDD_ID,SALDD001,SALDD002);
create sequence SEQ_TB_SALDD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALDD to public;
grant index  on TB_SALDD to public;
grant update on TB_SALDD to public; 
grant delete on TB_SALDD to public;  
grant insert on TB_SALDD to public; 
grant select on SEQ_TB_SALDD to public;   