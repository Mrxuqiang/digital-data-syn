================================================================================
表结构代码:TB_OTSAK
表结构名称:对账单打印日志表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_OTSAK;
drop index AK_TB_OTSAK;
drop table TB_OTSAK;
create table TB_OTSAK  (
   OTSAK_ID             INTEGER                         not null,  /*打印日志ID                    */
   OTSAK001             INTEGER                         not null,  /*合同ID                        */
   OTSAK002             DATE                            not null,  /*打印日期(yyyy-mm-dd:hh:mm:ss) */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                      */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                  */                               
   CREATE_DATE          DATE,                                      /*建立日期                      */
   MODIFIER             VARCHAR2(12),                              /*修改人员                      */
   MODI_DATE            DATE,                                      /*修改日期                      */
   FLAG                 NUMBER(1),                                 /*资料状态                      */
   constraint PK_TB_OTSAK primary key (OTSAK_ID)
);
--create unique index AK_TB_OTSAK on TB_OTSAK (OTSAK_ID);
create sequence SEQ_TB_OTSAK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTSAK to public;
grant index  on TB_OTSAK to public;
grant update on TB_OTSAK to public; 
grant delete on TB_OTSAK to public;  
grant insert on TB_OTSAK to public; 
grant select on SEQ_TB_OTSAK to public;   