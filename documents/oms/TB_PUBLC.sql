/*
================================================================================
表结构代码:TB_PUBLC
表结构名称:会计期间月份表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBLC;
drop index AK_TB_PUBLC;
drop table TB_PUBLC;
create table TB_PUBLC  (
   PUBLC_ID             INTEGER                         not null,  /*会计期间月份ID   */
   PUBLC001             INTEGER                         not null,  /*会计期间ID       */
   PUBLC002             NUMBER(2)                       not null,  /*会计月份         */
   PUBLC003             DATE                            not null,  /*开始日期         */
   PUBLC004             DATE                            not null,  /*结束日期         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_PUBLC primary key (PUBLC_ID)
);
create unique index AK_TB_PUBLC on TB_PUBLC (PUBLC001,PUBLC002);
create sequence SEQ_TB_PUBLC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLC to public;
grant index  on TB_PUBLC to public;
grant update on TB_PUBLC to public; 
grant delete on TB_PUBLC to public;  
grant insert on TB_PUBLC to public; 
grant select on SEQ_TB_PUBLC to public;   