/*
================================================================================
表结构代码:TB_SALAA
表结构名称:前端收银POS参数表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALAA;
drop index AK_TB_SALAA;
drop table TB_SALAA;
create table TB_SALAA  (
   SALAA_ID             INTEGER                         not null,  /*前端POS参数ID    */
   SALAA001             INTEGER                         not null,  /*营运组织ID       */
   SALAA002             VARCHAR2(12)                    not null,  /*收银机台编号     */
   SALAA003             VARCHAR2(30),                              /*收银机台名称     */
   SALAA004             VARCHAR2(16),                              /*IP地址           */
   SALAA005             VARCHAR2(1),                               /*是否自营专用     */
   SALAA006             INTEGER,                                   /*自营专用摊位号   */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SALAA primary key (SALAA_ID)
);
create unique index AK_TB_SALAA on TB_SALAA (SALAA002,SALAA003);
create sequence SEQ_TB_SALAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALAA to public;
grant index  on TB_SALAA to public;
grant update on TB_SALAA to public; 
grant delete on TB_SALAA to public;  
grant insert on TB_SALAA to public; 
grant select on SEQ_TB_SALAA to public;   