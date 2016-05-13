/*
================================================================================
表结构代码:TB_PUBRE
表结构名称:内部折算条件表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBRE;
drop index AK_TB_PUBRE;
drop table TB_PUBRE;
create table TB_PUBRE  (
   PUBRE_ID             INTEGER                         not null,  /*内部折算条件ID              */
   PUBRE001             INTEGER                         not null,  /*内部折算规则ID              */
   PUBRE002             INTEGER                         not null,  /*内部折算账簿关联ID          */
   PUBRE003             VARCHAR2(1),                               /*字段列表                    */
   PUBRE004             VARCHAR2(1),                               /*条件                        */
   PUBRE005             VARCHAR2(255) ,                            /*值                          */
   PUBRE006             VARCHAR2(1) ,                              /*与或                        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                    */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                */                               
   CREATE_DATE          DATE,                                      /*建立日期                    */
   MODIFIER             VARCHAR2(12),                              /*修改人员                    */
   MODI_DATE            DATE,                                      /*修改日期                    */
   FLAG                 NUMBER(1),                                 /*资料状态                    */
   constraint PK_TB_PUBRE primary key (PUBRE_ID)
);
create sequence SEQ_TB_PUBRE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRE to public;
grant index  on TB_PUBRE to public;
grant update on TB_PUBRE to public; 
grant delete on TB_PUBRE to public;  
grant insert on TB_PUBRE to public; 
grant select on SEQ_TB_PUBRE to public;   