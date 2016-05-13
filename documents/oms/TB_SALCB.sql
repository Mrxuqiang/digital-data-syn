/*
================================================================================
表结构代码:TB_SALCB
表结构名称:交款单付款表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALCB;
drop index AK_TB_SALCB;
drop table TB_SALCB;
create table TB_SALCB  (
   SALCB_ID             INTEGER                         not null,  /*交款单付款ID     */
   SALCB001             INTEGER                         not null,  /*交款单ID         */
   SALCB002             INTEGER                         not null,  /*结算方式ID       */
   SALCB003             NUMBER(12,2)                    not null,  /*实交款金额       */
   SALCB004             NUMBER(12,2),                              /*手续费           */
   SALCB005             NUMBER(12,2),                              /*溢收金额         */
   SALCB006             VARCHAR2(30),                              /*银行卡号         */
   SALCB007             INTEGER,                                   /*手续费率ID       */
   SALCB008             NUMBER(12,2),                              /*手续费率(%)      */
   SALCB009             VARCHAR2(30),                              /*支票号           */
   SALCB010             NUMBER(12,2),                              /*票面金额         */
   SALCB011             DATE,                                      /*出票日期         */
   SALCB012             VARCHAR2(60),                              /*出票单位         */
   SALCB013             INTEGER,                                   /*消费券种代码ID   */
   SALCB014             INTEGER,                                   /*消费券面额代码ID */
   SALCB015             NUMBER(30),                                /*开始券号         */
   SALCB016             NUMBER(30),                                /*结束券号         */
   SALCB017             NUMBER(8),                                 /*券数量           */
   SALCB018             NUMBER(30),                                /*消费券卡号       */
   SALCB019             INTEGER,                                   /*消费券卡种类ID   */
   SALCB020             NUMBER(30),                                /*消费卡号         */
   SALCB021             INTEGER,                                   /*预收款单ID       */
   SALCB022             INTEGER,                                   /*预收款单明细ID   */
   SALCB023             NUMBER(12,2),                              /*交款已返金额     */
   SALCB024             NUMBER(12,2),                              /*交款未返金额     */
   SALCB025             NUMBER(12,2),                              /*手续费已返金额   */
   SALCB026             NUMBER(12,2),                              /*手续费未返金额   */
   SALCB027             INTEGER,                                   /*订金单ID         */
   SALCB028             VARCHAR2(1),                               /*交易类型1.正常交易 2.订金转入 */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SALCB primary key (SALCB_ID)
);
create index AK_TB_SALCB on TB_SALCB (SALCB_ID,SALCB001,SALCB002,SALCB028);
create sequence SEQ_TB_SALCB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALCB to public;
grant index  on TB_SALCB to public;
grant update on TB_SALCB to public; 
grant delete on TB_SALCB to public;  
grant insert on TB_SALCB to public; 
grant select on SEQ_TB_SALCB to public;   