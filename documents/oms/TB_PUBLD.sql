/*
================================================================================
表结构代码:TB_PUBLD
表结构名称:会计期间季度表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBLD;
drop index AK_TB_PUBLD;
drop table TB_PUBLD;
create table TB_PUBLD  (
   PUBLD_ID             INTEGER                         not null,  /*会计期间季度ID   */
   PUBLD001             INTEGER                         not null,  /*会计期间ID       */
   PUBLD002             NUMBER(2)                       not null,  /*会计季度         */
   PUBLD003             NUMBER(2)                       not null,  /*开始月份         */
   PUBLD004             NUMBER(2)                       not null,  /*结束月份         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_PUBLD primary key (PUBLD_ID)
);
create unique index AK_TB_PUBLD on TB_PUBLD (PUBLD001,PUBLD002);
create sequence SEQ_TB_PUBLD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLD to public;
grant index  on TB_PUBLD to public;
grant update on TB_PUBLD to public; 
grant delete on TB_PUBLD to public;  
grant insert on TB_PUBLD to public; 
grant select on SEQ_TB_PUBLD to public;   