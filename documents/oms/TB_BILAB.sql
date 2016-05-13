/*
================================================================================
表结构代码:TB_BILAB
表结构名称:费用单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILAB;
drop index AK_TB_BILAB;
drop table TB_BILAB;
create table TB_BILAB  (
   BILAB_ID             INTEGER                         not null,  /*费用单明细ID         */
   BILAB001             INTEGER                         not null,  /*费用单ID             */
   BILAB002             INTEGER                         not null,  /*费用ID               */
   BILAB003             VARCHAR2(1)                     not null,  /*帐款类型             */
   BILAB004             INTEGER,                                   /*会计科目ID           */
   BILAB005             NUMBER(12,2)                    not null,  /*费用金额             */
   BILAB006             NUMBER(12,2)                    not null,  /*调整金额             */
   BILAB007             NUMBER(12,2)                    not null,  /*已冲金额             */
   BILAB008             NUMBER(12,2)                    not null,  /*已收金额             */
   BILAB009             NUMBER(12,2)                    not null,  /*未收金额             */
   BILAB010             VARCHAR2(255),                             /*备注                 */
   BILAB011             DATE,                                      /*费用起日             */
   BILAB012             DATE,                                      /*费用止日             */
   BILAB013             INTEGER,                                   /*参考单ID             */
   BILAB014             VARCHAR2(16),                              /*参考单号             */
   BILAB015             INTEGER,                                   /*合同帐单ID           */
   BILAB016             INTEGER,                                   /*未知                 */ 
   BILAB017             NUMBER(16,2),                              /*立账金额 (冻结金额)  */ 
   BILAB018             VARCHAR2(1),                               /*付款方式             */   
   BILAB019             VARCHAR2(6),                               /*收入所属月份         */ add ouwx 2012/02/20 
   BILAB020             VARCHAR2(100),                             /*流类型               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER,                                 /*资料状态             */
   constraint PK_TB_BILAB primary key (BILAB_ID)
);
create unique index AK_TB_BILAB on TB_BILAB (BILAB_ID,BILAB001,BILAB002);
create sequence SEQ_TB_BILAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILAB to public;
grant index  on TB_BILAB to public;
grant update on TB_BILAB to public; 
grant delete on TB_BILAB to public;  
grant insert on TB_BILAB to public; 
grant select on SEQ_TB_BILAB to public;   