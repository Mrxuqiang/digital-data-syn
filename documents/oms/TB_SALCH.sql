/*
================================================================================
表结构代码:TB_SALCH
表结构名称:退款单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALCH;
drop index AK_TB_SALCH;
drop table TB_SALCH;
create table TB_SALCH  (
   SALCH_ID             INTEGER                         not null,  /*退款单ID         */
   SALCH001             INTEGER                         not null,  /*单别             */
   SALCH002             VARCHAR2(30)                    not null,  /*退款单号         */
   SALCH003             DATE                            not null,  /*退款日期         */
   SALCH004             VARCHAR2(1)                     not null,  /*退款类型         */
   SALCH005             INTEGER                         not null,  /*冲销单ID         */
   SALCH006             INTEGER,                                   /*退款凭证种类ID   */
   SALCH007             NUMBER(12),                                /*退款凭证号       */
   SALCH008             INTEGER                         not null,  /*退款员ID         */
   SALCH009             VARCHAR2(255),                             /*备注             */
   SALCH010             NUMBER(12,2)                    not null,  /*退款金额         */
   SALCH011             NUMBER(12,2),                              /*折扣扣减金额     */
   SALCH012             NUMBER(12,2)                    not null,  /*应退款金额       */
   SALCH013             NUMBER(12,2)                    not null,  /*实退款金额       */
   SALCH014             NUMBER(12,2),                              /*溢退金额         */
   SALCH015             NUMBER(12,2),                              /*本次扣积分       */
   SALCH016             VARCHAR2(30),                   not null,  /*冲销单号         */
   SALCH017             INTEGER                         not null,  /*营运组织ID       */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SALCH primary key (SALCH_ID)
);
create unique index AK_TB_SALCH on TB_SALCH (SALCH002,SALCH017);
create sequence SEQ_TB_SALCH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALCH to public;
grant index  on TB_SALCH to public;
grant update on TB_SALCH to public; 
grant delete on TB_SALCH to public;  
grant insert on TB_SALCH to public; 
grant select on SEQ_TB_SALCH to public;   