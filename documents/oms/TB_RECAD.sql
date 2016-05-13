/*
================================================================================
表结构代码:TB_RECAD
表结构名称:单据凭证对照表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_RECAD;
drop index AK_TB_RECAD;
drop table TB_RECAD;
create table TB_RECAD  (
   RECAD_ID             INTEGER                         not null,  /*单据凭证对照表ID     */
   RECAD001             INTEGER                         not null,  /*来源ID             */
   RECAD002             VARCHAR2(1)                     not null,  /*来源类型               */
   RECAD003             INTEGER,                                   /*公司                 */
   RECAD004             INTEGER ,                                  /*核算账套             */
   RECAD005             INTEGER ,                                  /*凭证号               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_RECAD primary key (RECAD_ID)
);
create unique index AK_TB_RECAD on TB_RECAD (RECAD001,RECAD002,RECAD004);
create sequence SEQ_TB_RECAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_RECAD to public;
grant index  on TB_RECAD to public;
grant update on TB_RECAD to public; 
grant delete on TB_RECAD to public;  
grant insert on TB_RECAD to public; 
grant select on SEQ_TB_RECAD to public;   