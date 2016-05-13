/*
================================================================================
表结构代码:TB_PMTID
表结构名称:交款收券单不参与规则表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTID;
drop index AK_TB_PMTID;
drop table TB_PMTID;
create table TB_PMTID  (
   PMTID_ID             INTEGER                         not null,  /*赠品不参与规则ID  */
   PMTID001             INTEGER                         not null,  /*交款收券单ID      */
   PMTID002             VARCHAR2(1)                     not null,  /*不参与对象类型    */
   PMTID003             INTEGER,                                   /*不参与对象ID      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTID primary key (PMTID_ID)
);
create unique index AK_TB_PMTID on TB_PMTID (PMTID001,PMTID002,PMTID003);
create sequence SEQ_TB_PMTID minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTID to public;
grant index  on TB_PMTID to public;
grant update on TB_PMTID to public; 
grant delete on TB_PMTID to public;  
grant insert on TB_PMTID to public; 
grant select on SEQ_TB_PMTID to public;   