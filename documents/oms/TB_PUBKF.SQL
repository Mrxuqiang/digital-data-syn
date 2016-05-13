/*
================================================================================
表结构代码:TB_PUBKF
表结构名称:货区表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBKF;
drop index AK_TB_PUBKF;
drop table TB_PUBKF;
create table TB_PUBKF  (
   PUBKF_ID             INTEGER                            not null,  /*货区ID            */
   PUBKF001             VARCHAR2(8)                      not null,  /*货区代码          */
   PUBKF002             VARCHAR2(64)                    not null,  /*货区名称          */
   PUBKF003             INTEGER                            not null,  /*所属仓库ID        */
   PUBKF004             VARCHAR2(32)                               ,  /*条码        */
   PUBKF005             VARCHAR2(255),                               /*用途      */
   PUBKF006             VARCHAR2(1),                                 /*自动占用库存*/
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                           /*建立日期          */
   MODIFIER             VARCHAR2(12),                               /*修改人员          */
   MODI_DATE            DATE,                                           /*修改日期          */
   FLAG                 NUMBER(1),                                          /*资料状态          */
   constraint PK_TB_PUBKF primary key (PUBKF_ID)
);
create unique index AK_TB_PUBKF on TB_PUBKF (PUBKF001);
create sequence SEQ_TB_PUBKF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBKF to public;
grant index  on TB_PUBKF to public;
grant update on TB_PUBKF to public; 
grant delete on TB_PUBKF to public;  
grant insert on TB_PUBKF to public; 
grant select on SEQ_TB_PUBKF to public;   