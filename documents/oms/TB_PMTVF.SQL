/*
================================================================================
表结构代码:TB_PMTVF
表结构名称:满赠促销单生效范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTVF;
drop index AK_TB_PMTVF;
drop table TB_PMTVF;
create table TB_PMTVF  (
   PMTVF_ID             INTEGER                         not null,  /*生效范围ID    */
   PMTVF001             INTEGER                         not null,  /*满减促销单ID      */
   PMTVF002             INTEGER                         not null,  /*营运组织ID        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTVF primary key (PMTVF_ID)
);
create unique index AK_TB_PMTVF on TB_PMTVF (PMTVF001,PMTVF002);
create sequence SEQ_TB_PMTVF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTVF to public;
grant index  on TB_PMTVF to public;
grant update on TB_PMTVF to public; 
grant delete on TB_PMTVF to public;  
grant insert on TB_PMTVF to public; 
grant select on SEQ_TB_PMTVF to public;   