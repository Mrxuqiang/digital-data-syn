/*
================================================================================
表结构代码:TB_CCMDS
表结构名称:券状态表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMDS;
drop index AK_TB_CCMDS;
drop table TB_CCMDS;
create table TB_CCMDS  (
   CCMDS_ID             INTEGER                         not null,  /*券ID                */
   CCMDS001             INTEGER                         not null,  /*券种ID              */
   CCMDS002             NUMBER(30)                      not null,  /*券号                */
   CCMDS003             VARCHAR2(1)                     not null,  /*券状态: 1.入库 2.领用 3.发放  4.回收 5.作废  */
   CCMDS004             VARCHAR2(1),                               /*作废前券状态: 1.入库 2.领用 3.发放  4.回收 5.作废  */ 
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMDS primary key (CCMDS_ID)
);
create unique index AK_TB_CCMDS on TB_CCMDS (CCMDS001,CCMDS002);
create sequence SEQ_TB_CCMDS minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDS to public;
grant index  on TB_CCMDS to public;
grant update on TB_CCMDS to public; 
grant delete on TB_CCMDS to public;  
grant insert on TB_CCMDS to public; 
grant select on SEQ_TB_CCMDS to public;   