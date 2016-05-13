/*
================================================================================
表结构代码:TB_SALCI
表结构名称:退款单付款表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALCI;
drop index AK_TB_SALCI;
drop table TB_SALCI;
create table TB_SALCI  (
   SALCI_ID             INTEGER                         not null,  /*退款单付款ID     */
   SALCI001             INTEGER                         not null,  /*退款单ID         */
   SALCI002             INTEGER                         not null,  /*结算方式ID       */
   SALCI003             NUMBER(12,2)                    not null,  /*实退款金额       */
   SALCI004             NUMBER(12,2),                              /*手续费           */
   SALCI005             NUMBER(12,2),                              /*溢退金额         */
   SALCI006             VARCHAR2(30),                              /*银行卡号         */
   SALCI007             INTEGER,                                   /*手续费率ID       */
   SALCI008             NUMBER(12,2),                              /*手续费率(%)      */
   SALCI009             VARCHAR2(30),                              /*支票号           */
   SALCI010             NUMBER(12,2),                              /*票面金额         */
   SALCI011             DATE,                                      /*出票日期         */
   SALCI012             VARCHAR2(60),                              /*出票单位         */
   SALCI013             INTEGER,                                   /*消费券种代码ID   */
   SALCI014             INTEGER,                                   /*消费券面额代码ID */
   SALCI015             NUMBER(30),                                /*开始券号         */
   SALCI016             NUMBER(30),                                /*结束券号         */
   SALCI017             NUMBER(8),                                 /*券数量           */
   SALCI018             NUMBER(30),                                /*消费券卡号       */
   SALCI019             INTEGER,                                   /*消费券卡种类ID   */
   SALCI020             NUMBER(30),                                /*消费卡号         */
   SALCI021             NUMBER(12,2),                              /*退款已返金额     */
   SALCI022             NUMBER(12,2),                              /*退款未返金额     */
   SALCI023             NUMBER(12,2),                              /*手续费已返金额   */
   SALCI024             NUMBER(12,2),                              /*手续费未返金额   */
   SALCI025             VARCHAR2(1),                               /*收付方向1.退 2.收*/
   SALCI026             INTEGER,                                   /*预收款单ID       */
   SALCI027             INTEGER,                                   /*预收款单明细ID   */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SALCI primary key (SALCI_ID)
);
create index AK_TB_SALCI on TB_SALCI (SALCI_ID,SALCI001,SALCI002);
create sequence SEQ_TB_SALCI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALCI to public;
grant index  on TB_SALCI to public;
grant update on TB_SALCI to public; 
grant delete on TB_SALCI to public;  
grant insert on TB_SALCI to public; 
grant select on SEQ_TB_SALCI to public;   