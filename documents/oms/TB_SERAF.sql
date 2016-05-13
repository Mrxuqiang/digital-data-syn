/*
================================================================================
表结构代码:TB_SERAF
表结构名称:销售凭证收回单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERAF;
drop index AK_TB_SERAF;
drop table TB_SERAF;
create table TB_SERAF  (
   SERAF_ID             INTEGER                         not null,  /*销售凭证收回单明细ID */
   SERAF001             INTEGER                         not null,  /*销售凭证收回单ID     */
   SERAF002             INTEGER                         not null,  /*凭证种类ID           */
   SERAF003             NUMBER(12)                      not null,  /*开始号码             */
   SERAF004             NUMBER(12)                      not null,  /*结束号码             */
   SERAF005             NUMBER(12)                      not null,  /*张数                 */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_SERAF primary key (SERAF_ID)
);
create unique index AK_TB_SERAF on TB_SERAF (SERAF001,SERAF002,SERAF003);
create sequence SEQ_TB_SERAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERAF to public;
grant index  on TB_SERAF to public;
grant update on TB_SERAF to public; 
grant delete on TB_SERAF to public;  
grant insert on TB_SERAF to public; 
grant select on SEQ_TB_SERAF to public;   