/*
================================================================================
表结构代码:TB_SYSDE
表结构名称:用户权限营运组织表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSDE;
drop index AK_TB_SYSDE;
drop table TB_SYSDE;
create table TB_SYSDE  (
   SYSDE_ID             INTEGER                         not null,  /*用户营运组织ID   */
   SYSDE001             INTEGER                         not null,  /*用户权限ID       */
   SYSDE002             INTEGER                         not null,  /*公司ID           */
   SYSDE003             INTEGER,                                   /*营运组织ID       */
   SYSDE004             VARCHAR2(1),                               /*是否默认营运组织 */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSDE primary key (SYSDE_ID)
);
create unique index AK_TB_SYSDE on TB_SYSDE (SYSDE001,SYSDE002,SYSDE003);
create sequence SEQ_TB_SYSDE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSDE to public;
grant index  on TB_SYSDE to public;
grant update on TB_SYSDE to public; 
grant delete on TB_SYSDE to public;  
grant insert on TB_SYSDE to public; 
grant select on SEQ_TB_SYSDE to public;   