/*
================================================================================
表结构代码:TB_PUBRD
表结构名称:内部折算科目对照表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBRD;
drop index AK_TB_PUBRD;
drop table TB_PUBRD;
create table TB_PUBRD  (
   PUBRD_ID             INTEGER                         not null,  /*内部折算科目对照ID          */
   PUBRD001             INTEGER                         not null,  /*内部折算规则ID              */
   PUBRD002             INTEGER                         not null,  /*内部折算账簿关联ID          */
   PUBRD003             INTEGER,                                   /*来源科目ID                  */
   PUBRD004             VARCHAR2(40),                              /*预留字段                */
   PUBRD005             INTEGER,                                   /*目的科目ID                  */
   PUBRD006             VARCHAR2(40),                              /*预留字段                */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                    */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                */                               
   CREATE_DATE          DATE,                                      /*建立日期                    */
   MODIFIER             VARCHAR2(12),                              /*修改人员                    */
   MODI_DATE            DATE,                                      /*修改日期                    */
   FLAG                 NUMBER(1),                                 /*资料状态                    */
   constraint PK_TB_PUBRD primary key (PUBRD_ID)
);
create unique index AK_TB_PUBRD on TB_PUBRD (PUBRD001,PUBRD002,PUBRD003,PUBRD005);
create sequence SEQ_TB_PUBRD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRD to public;
grant index  on TB_PUBRD to public;
grant update on TB_PUBRD to public; 
grant delete on TB_PUBRD to public;  
grant insert on TB_PUBRD to public; 
grant select on SEQ_TB_PUBRD to public;   