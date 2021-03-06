/*
================================================================================
表结构代码:TB_PUBHL
表结构名称:仓库表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBHL;
drop index AK_TB_PUBHL;
drop table TB_PUBHL;
create table TB_PUBHL  (
   PUBHL_ID             INTEGER                         not null,  /*仓库ID            */
   PUBHL001             VARCHAR2(8)                     not null,  /*仓库代码          */
   PUBHL002             VARCHAR2(64)                    not null,  /*仓库名称          */
   PUBHL003             INTEGER                         not null,  /*仓库属性ID        */
   PUBHL004             INTEGER                         not null,  /*营运组织ID        */
   PUBHL005             VARCHAR2(1),                               /*是否启用仓位      */
   PUBHL006             VARCHAR2(255),                             /*仓库地址          */
   PUBHL007             VARCHAR2(1),                               /*是否物流代管      */--201214 add by xiechun
   PUBHL008             INTEGER                                 ,  /*代管营运组织      */--201214 add by xiechun
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PUBHL primary key (PUBHL_ID)
);
create unique index AK_TB_PUBHL on TB_PUBHL (PUBHL001);
create sequence SEQ_TB_PUBHL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHL to public;
grant index  on TB_PUBHL to public;
grant update on TB_PUBHL to public; 
grant delete on TB_PUBHL to public;  
grant insert on TB_PUBHL to public; 
grant select on SEQ_TB_PUBHL to public;   