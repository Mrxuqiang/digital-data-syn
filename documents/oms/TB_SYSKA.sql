/*
================================================================================
表结构代码:TB_SYSKA
表结构名称:楼管表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_SYSKA;
drop index AK_TB_SYSKA;
drop table TB_SYSKA;
create table TB_SYSKA  (
   SYSKA_ID             INTEGER                         not null,  /*楼管表ID            */
   SYSKA001             INTEGER                         not null,  /*用户id(关联sysdd_id)               */   
   SYSKA002             INTEGER                         not null,  /*营运组织id(关联sysde_id)           */
   SYSKA003             INTEGER                         not null,  /*楼栋id               */
   SYSKA004             INTEGER                         not null,  /*楼层id               */
   SYSKA005             VARCHAR2(1),                               /*是否默认             */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门          */                               
   CREATE_DATE          DATE,                                      /*建立日期              */
   MODIFIER             VARCHAR2(12),                              /*修改人员              */
   MODI_DATE            DATE,                                      /*修改日期              */
   FLAG                 NUMBER,                                    /*资料状态              */
   constraint PK_TB_SYSKA primary key (SYSKA_ID)
);
create unique index AK_TB_SYSKA on TB_SYSKA (SYSKA001,SYSKA002,SYSKA003,SYSKA004,FLAG);
create sequence SEQ_TB_SYSKA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSKA to public;
grant index  on TB_SYSKA to public;
grant update on TB_SYSKA to public; 
grant delete on TB_SYSKA to public;  
grant insert on TB_SYSKA to public; 
grant select on SEQ_TB_SYSKA to public;   