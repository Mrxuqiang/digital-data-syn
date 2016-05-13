/*
================================================================================
表结构代码:TB_SYSAC
表结构名称:程序定义表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSAC;
drop index AK_TB_SYSAC;
drop table TB_SYSAC;
create table TB_SYSAC  (
   SYSAC_ID             INTEGER                         not null,  /*程序ID           */
   SYSAC001             VARCHAR2(16)                    not null,  /*程序代码         */
   SYSAC002             INTEGER                         not null,  /*模块ID           */
   SYSAC003             VARCHAR2(1)                     not null,  /*程序类型         */
   SYSAC004             DATE                            not null,  /*设计日期         */
   SYSAC005             VARCHAR2(1)                     not null,  /*闲置处理         */
   SYSAC006             NUMBER(5),                                 /*闲置时间(秒)     */
   SYSAC007             VARCHAR2(1),                               /*闲置处理方式     */
   SYSAC008             VARCHAR2(1),                               /*是否自动编码     */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSAC primary key (SYSAC_ID)
);
create unique index AK_TB_SYSAC on TB_SYSAC (SYSAC001);
create sequence SEQ_TB_SYSAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSAC to public;
grant index  on TB_SYSAC to public;
grant update on TB_SYSAC to public; 
grant delete on TB_SYSAC to public;  
grant insert on TB_SYSAC to public; 
grant select on SEQ_TB_SYSAC to public;   