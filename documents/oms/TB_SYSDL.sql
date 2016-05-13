/*
================================================================================
表结构代码:TB_SYSDL
表结构名称:商户权限表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_SYSDL;
drop index AK_TB_SYSDL;
drop table TB_SYSDL;
create table TB_SYSDL  (
   SYSDL_ID             INTEGER                         not null,  /*商户权限表id         */
   SYSDL001             INTEGER                         not null,  /*用户id               */   
   SYSDL002             INTEGER                         not null,  /*营运组织id           */
   SYSDL003             INTEGER                         not null,  /*摊位id               */
   SYSDL004             INTEGER                         not null,  /*商户id               */
   SYSDL005             VARCHAR2(1),                               /*是否默认             */
   SYSDL006             INTEGER                                 ,  /*合同id               */
   SYSDL007             INTEGER                                 ,  /*转移单id               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门          */                               
   CREATE_DATE          DATE,                                      /*建立日期              */
   MODIFIER             VARCHAR2(12),                              /*修改人员              */
   MODI_DATE            DATE,                                      /*修改日期              */
   FLAG                 NUMBER,                                    /*资料状态              */
   constraint PK_TB_SYSDL primary key (SYSDL_ID)
);
create unique index AK_TB_SYSDL on TB_SYSDL (SYSDL001,SYSDL003,SYSDL004,FLAG);
create sequence SEQ_TB_SYSDL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSDL to public;
grant index  on TB_SYSDL to public;
grant update on TB_SYSDL to public; 
grant delete on TB_SYSDL to public;  
grant insert on TB_SYSDL to public; 
grant select on SEQ_TB_SYSDL to public;   