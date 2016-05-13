/*
================================================================================
表结构代码:TB_SALDJ
表结构名称:退货垫付单付款别表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALDJ;
drop index AK_TB_SALDJ;
drop table TB_SALDJ;
create table TB_SALDJ  (
   SALDJ_ID             INTEGER                         not null,  /*退货垫付单付款ID */
   SALDJ001             INTEGER                         not null,  /*退货垫付单ID     */
   SALDJ002             INTEGER                         not null,  /*结算方式ID       */
   SALDJ003             NUMBER(12,2)                    not null,  /*付款金额         */
   SALDJ004             NUMBER(12,2),                              /*手续费           */
   SALDJ005             VARCHAR2(30),                              /*银行卡号         */
   SALDJ006             INTEGER,                                   /*手续费率ID       */
   SALDJ007             NUMBER(12,2),                              /*手续费率(%)      */
   SALDJ008             VARCHAR2(30),                              /*支票号           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SALDJ primary key (SALDJ_ID)
);
create index AK_TB_SALDJ on TB_SALDJ (SALDJ_ID,SALDJ001,SALDJ002);
create sequence SEQ_TB_SALDJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALDJ to public;
grant index  on TB_SALDJ to public;
grant update on TB_SALDJ to public; 
grant delete on TB_SALDJ to public;  
grant insert on TB_SALDJ to public; 
grant select on SEQ_TB_SALDJ to public;   