/*
================================================================================
表结构代码:TB_ASSBA
表结构名称:交易单据主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_ASSBA;
drop index AK_TB_ASSBA;
drop table TB_ASSBA;
create table TB_ASSBA  (
   ASSBA_ID             INTEGER                         not null,   /*单据主ID         */
   ASSBA001             VARCHAR2(30)                    not null,   /*单据号           */
   ASSBA002             DATE                            not null,   /*单据日期         */
   ASSBA003             VARCHAR2(1)                     not null,   /*变动类型         */
   ASSBA004             VARCHAR2(1)                     not null,   /*单据状态         */
   ASSBA005             VARCHAR2(255),                              /*备注             */
   ASSBA006             INTEGER,                                    /*录入人           */
   ASSBA007             DATE,                                       /*录入日期         */
   ASSBA008             INTEGER,                                    /*审核人           */
   ASSBA009             DATE,                                       /*审核日期         */
   ASSBA010             INTEGER                         not null,   /*单别         */
   CREATE_USER          VARCHAR2(12),                               /*建立人员               */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门           */                               
   CREATE_DATE          DATE,                                       /*建立日期               */
   MODIFIER             VARCHAR2(12),                               /*修改人员               */
   MODI_DATE            DATE,                                       /*修改日期               */
   FLAG                 NUMBER(1),                                  /*资料状态               */
   constraint PK_TB_ASSBA primary key (ASSBA_ID)
);
create unique index AK_TB_ASSBA on TB_ASSBA (ASSBA001,ASSBA010);
create sequence SEQ_TB_ASSBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_ASSBA to public;
grant index  on TB_ASSBA to public;
grant update on TB_ASSBA to public; 
grant delete on TB_ASSBA to public;  
grant insert on TB_ASSBA to public; 
grant select on SEQ_TB_ASSBA to public;   