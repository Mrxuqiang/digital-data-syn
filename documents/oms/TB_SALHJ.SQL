/*
================================================================================
表结构代码:TB_SALHJ
表结构名称:退款单退款明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALHJ;
drop index AK_TB_SALHJ;
drop table TB_SALHJ;
create table TB_SALHJ  (
   SALHJ_ID             INTEGER                         not null,  /*退款单退款明细ID     */
   SALHJ001             INTEGER                          not null, /*退款单ID           */
   SALHJ002             INTEGER                         not null,  /*结算方式ID        */
   SALHJ003             NUMBER(12,2)                 not null,     /*实退款款金额         */
   SALHJ004             NUMBER(12,2),                              /*手续费               */
   SALHJ006             VARCHAR2(30),                              /*银行卡号           */
   SALHJ007             INTEGER,                                   /*手续费率ID       */
   SALHJ008             NUMBER(12,2),                              /*手续费率(%)      */
   SALHJ009             VARCHAR2(30),                              /*支票号              */
   SALHJ010             NUMBER(12,2),                              /*票面金额           */
   SALHJ011             DATE,                                      /*出票日期           */
   SALHJ012             VARCHAR2(60),                              /*出票单位          */
   SALHJ013             INTEGER,                                   /*消费券种代码ID */
   SALHJ014             INTEGER,                                   /*消费券面额代码ID */
   SALHJ015             NUMBER(30),                                /*开始券号         */
   SALHJ016             NUMBER(30),                                /*结束券号         */
   SALHJ017             NUMBER(8),                                 /*券数量           */
   SALHJ018             NUMBER(30),                                /*消费券卡号       */
   SALHJ019             INTEGER,                                   /*消费券卡种类ID   */
   SALHJ020             NUMBER(30),                                /*消费卡号         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SALHJ primary key (SALHJ_ID)
);
create sequence SEQ_TB_SALHJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALHJ to public;
grant index  on TB_SALHJ to public;
grant update on TB_SALHJ to public; 
grant delete on TB_SALHJ to public;  
grant insert on TB_SALHJ to public; 
grant select on SEQ_TB_SALHJ to public;   