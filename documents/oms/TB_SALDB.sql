/*
================================================================================
表结构代码:TB_SALDB
表结构名称:预收单付款别表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALDB;
drop index AK_TB_SALDB;
drop table TB_SALDB;
create table TB_SALDB  (
   SALDB_ID             INTEGER                         not null,  /*预收单付款ID     */
   SALDB001             INTEGER                         not null,  /*预收单ID         */
   SALDB002             INTEGER                         not null,  /*结算方式ID       */
   SALDB003             NUMBER(12,2)                    not null,  /*预收金额         */
   SALDB004             NUMBER(12,2),                              /*手续费           */
   SALDB005             NUMBER(12,2),                              /*溢收金额         */
   SALDB006             VARCHAR2(30),                              /*银行卡号         */
   SALDB007             INTEGER,                                   /*手续费率ID       */
   SALDB008             NUMBER(12,2),                              /*手续费率(%)      */
   SALDB009             VARCHAR2(30),                              /*支票号           */
   SALDB010             NUMBER(12,2),                              /*票面金额         */
   SALDB011             DATE,                                      /*出票日期         */
   SALDB012             VARCHAR2(60),                              /*出票单位         */
   SALDB013             NUMBER(30),                                /*消费卡号         */
   SALDB014             NUMBER(12,2),                              /*预收退款金额     */
   SALDB015             NUMBER(12,2),                              /*预收冲销金额     */
   SALDB016             NUMBER(12,2),                              /*预收余额         */
   SALDB017             NUMBER(12,2),                              /*退手续费金额     */
   SALDB018             NUMBER(12,2),                              /*冲手续费金额     */
   SALDB019             NUMBER(12,2),                              /*手续费余额       */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SALDB primary key (SALDB_ID)
);
create index AK_TB_SALDB on TB_SALDB (SALDB_ID,SALDB001,SALDB002);
create sequence SEQ_TB_SALDB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALDB to public;
grant index  on TB_SALDB to public;
grant update on TB_SALDB to public; 
grant delete on TB_SALDB to public;  
grant insert on TB_SALDB to public; 
grant select on SEQ_TB_SALDB to public;   