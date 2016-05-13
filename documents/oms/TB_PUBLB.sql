/*
================================================================================
表结构代码:TB_PUBLB
表结构名称:会计期间主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBLB;
drop index AK_TB_PUBLB;
drop table TB_PUBLB;
create table TB_PUBLB  (
   PUBLB_ID             INTEGER                         not null,  /*会计期间ID       */
   PUBLB001             NUMBER(4)                       not null,  /*会计年度         */
   PUBLB002             INTEGER                         not null,  /*会计期间方案ID   */
   PUBLB003             NUMBER(2),                                 /*期间个数         */
   PUBLB004             NUMBER(2),                                 /*季度个数         */
   PUBLB005             DATE                            not null,  /*开始日期         */
   PUBLB006             DATE                            not null,  /*结束日期         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_PUBLB primary key (PUBLB_ID)
);
create unique index AK_TB_PUBLB on TB_PUBLB (PUBLB001);
create sequence SEQ_TB_PUBLB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLB to public;
grant index  on TB_PUBLB to public;
grant update on TB_PUBLB to public; 
grant delete on TB_PUBLB to public;  
grant insert on TB_PUBLB to public; 
grant select on SEQ_TB_PUBLB to public;   