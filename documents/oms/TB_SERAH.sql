/*
================================================================================
表结构代码:TB_SERAH
表结构名称:销售凭证作废单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERAH;
drop index AK_TB_SERAH;
drop table TB_SERAH;
create table TB_SERAH  (
   SERAH_ID             INTEGER                         not null,  /*销售凭证作废单明细ID */
   SERAH001             INTEGER                         not null,  /*销售凭证作废单ID     */
   SERAH002             INTEGER                         not null,  /*凭证种类ID           */
   SERAH003             NUMBER(12)                      not null,  /*开始号码             */
   SERAH004             NUMBER(12)                      not null,  /*结束号码             */
   SERAH005             NUMBER(12)                      not null,  /*张数                 */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_SERAH primary key (SERAH_ID)
);
create unique index AK_TB_SERAH on TB_SERAH (SERAH001,SERAH002,SERAH003);
create sequence SEQ_TB_SERAH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERAH to public;
grant index  on TB_SERAH to public;
grant update on TB_SERAH to public; 
grant delete on TB_SERAH to public;  
grant insert on TB_SERAH to public; 
grant select on SEQ_TB_SERAH to public;   