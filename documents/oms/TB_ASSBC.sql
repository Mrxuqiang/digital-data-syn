/*
================================================================================
表结构代码:TB_ASSBC
表结构名称:工作量表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_ASSBC;
drop index AK_TB_ASSBC;
drop table TB_ASSBC;
create table TB_ASSBC  (
   ASSBC_ID             INTEGER                         not null,   /*工作量表ID   */
   ASSBC001             VARCHAR2(6)                     not null,   /*工作年月     */
   ASSBC002             INTEGER                         not null,   /*卡片ID     */
   ASSBC003             VARCHAR2(30)                    not null,   /*资产编号     */
   ASSBC004             VARCHAR2(60)                    not null,   /*资产名称     */
   ASSBC005             NUMBER(18,3),                               /*工作总量     */
   ASSBC006             NUMBER(18,3),                               /*上月工作量   */
   ASSBC007             NUMBER(18,3),                               /*本月工作量   */
   ASSBC008             NUMBER(18,3),                               /*累计工作量   */
   ASSBC009             NUMBER(18,3),                               /*剩余工作量   */
   CREATE_USER          VARCHAR2(12),                               /*建立人员               */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门           */                               
   CREATE_DATE          DATE,                                       /*建立日期               */
   MODIFIER             VARCHAR2(12),                               /*修改人员               */
   MODI_DATE            DATE,                                       /*修改日期               */
   FLAG                 NUMBER(1),                                  /*资料状态               */
   constraint PK_TB_ASSBC primary key (ASSBC_ID)
);
create unique index AK_TB_ASSBC on TB_ASSBC (ASSBC001,ASSBC002);
create sequence SEQ_TB_ASSBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_ASSBC to public;
grant index  on TB_ASSBC to public;
grant update on TB_ASSBC to public; 
grant delete on TB_ASSBC to public;  
grant insert on TB_ASSBC to public; 
grant select on SEQ_TB_ASSBC to public;   