/*
================================================================================
表结构代码:TB_BILCB
表结构名称:费用调整单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILCB;
drop index AK_TB_BILCB;
drop table TB_BILCB;
create table TB_BILCB  (
   BILCB_ID             INTEGER                         not null,  /*费用调整单明细ID     */
   BILCB001             INTEGER                         not null,  /*费用调整单ID         */
   BILCB002             INTEGER                         not null,  /*费用单ID             */
   BILCB003             INTEGER                         not null,  /*费用单明细ID         */
   BILCB004             INTEGER                         not null,  /*费用ID               */
   BILCB005             VARCHAR2(1)                     not null,  /*费用类型             */
   BILCB006             INTEGER,                                   /*会计科目ID           */
   BILCB007             NUMBER(12,2)                    not null,  /*费用未收金额         */
   BILCB008             NUMBER(12,2)                    not null,  /*调整金额             */
   BILCB009             NUMBER(12,2)                    not null,  /*调整后未收金额       */
   BILCB010             VARCHAR2(255),                             /*备注                 */
   BILCB011             INTEGER,                                   /*调整原因ID           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_BILCB primary key (BILCB_ID)
);
create unique index AK_TB_BILCB on TB_BILCB (BILCB001,BILCB002,BILCB003);
create sequence SEQ_TB_BILCB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILCB to public;
grant index  on TB_BILCB to public;
grant update on TB_BILCB to public; 
grant delete on TB_BILCB to public;  
grant insert on TB_BILCB to public; 
grant select on SEQ_TB_BILCB to public;   