/*
================================================================================
表结构代码:TB_ASSAB
表结构名称:固定资产卡片子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_ASSAB;
drop index AK_TB_ASSAB;
drop table TB_ASSAB;
create table TB_ASSAB  (
   ASSAB_ID             INTEGER                         not null,   /*卡片子ID         */
   ASSAB001             INTEGER                         not null,   /*卡片主ID         */
   ASSAB002             INTEGER                         not null,   /*部门ID           */
   ASSAB003             NUMBER(5,4)                     not null,   /*比例             */
   CREATE_USER          VARCHAR2(12),                               /*建立人员               */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门           */                               
   CREATE_DATE          DATE,                                       /*建立日期               */
   MODIFIER             VARCHAR2(12),                               /*修改人员               */
   MODI_DATE            DATE,                                       /*修改日期               */
   FLAG                 NUMBER(1),                                  /*资料状态               */
   constraint PK_TB_ASSAB primary key (ASSAB_ID)
);
create unique index AK_TB_ASSAB on TB_ASSAB (ASSAB001,ASSAB002);
create sequence SEQ_TB_ASSAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_ASSAB to public;
grant index  on TB_ASSAB to public;
grant update on TB_ASSAB to public; 
grant delete on TB_ASSAB to public;  
grant insert on TB_ASSAB to public; 
grant select on SEQ_TB_ASSAB to public;   