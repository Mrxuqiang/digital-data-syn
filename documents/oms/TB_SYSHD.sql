/*
================================================================================
表结构代码:TB_SYSHD
表结构名称:数据访问权限组作业表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_SYSHD;
drop index AK_TB_SYSHD;
drop table TB_SYSHD;
create table TB_SYSHD  (
   SYSHD_ID             INTEGER                         not null,  /*访问权限组作业ID */
   SYSHD001             INTEGER                         not null,  /*访问权限组ID     */
   SYSHD002             INTEGER                         not null,  /*作业ID（标准菜单ID）*/
   SYSHD003             VARCHAR2(255),				                     /*预留             */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER,                                 /*资料状态         */
   constraint PK_TB_SYSHD primary key (SYSHD_ID)
);
create sequence SEQ_TB_SYSHD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSHD to public;
grant index  on TB_SYSHD to public;
grant update on TB_SYSHD to public; 
grant delete on TB_SYSHD to public;  
grant insert on TB_SYSHD to public; 
grant select on SEQ_TB_SYSHD to public;   