/*
================================================================================
表结构代码:TB_SERAD
表结构名称:销售凭证发放单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERAD;
drop index AK_TB_SERAD;
drop table TB_SERAD;
create table TB_SERAD  (
   SERAD_ID             INTEGER                         not null,  /*销售凭证发放单明细ID */
   SERAD001             INTEGER                         not null,  /*销售凭证发放单ID     */
   SERAD002             INTEGER                         not null,  /*凭证种类ID           */
   SERAD003             NUMBER(12)                      not null,  /*开始号码             */
   SERAD004             NUMBER(12)                      not null,  /*结束号码             */
   SERAD005             NUMBER(12)                      not null,  /*张数                 */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_SERAD primary key (SERAD_ID)
);
create unique index AK_TB_SERAD on TB_SERAD (SERAD001,SERAD002,SERAD003);
create sequence SEQ_TB_SERAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERAD to public;
grant index  on TB_SERAD to public;
grant update on TB_SERAD to public; 
grant delete on TB_SERAD to public;  
grant insert on TB_SERAD to public; 
grant select on SEQ_TB_SERAD to public;   