/*
================================================================================
表结构代码:TB_SYSKB
表结构名称:工厂权限表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_SYSKB;
drop index AK_TB_SYSKB;
drop table TB_SYSKB;
create table TB_SYSKB  (
   SYSKB_ID             INTEGER                         not null,  /*工厂权限表id        */
   SYSKB001             INTEGER                         not null,  /*用户id               */   
   SYSKB002             INTEGER                         not null,  /*营运组织id           */
   SYSKB003             INTEGER                         not null,  /*品牌id            */
   SYSKB004             INTEGER                         not null,  /*工厂id              */
   SYSKB005             VARCHAR2(1),                               /*是否默认             */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门          */                               
   CREATE_DATE          DATE,                                      /*建立日期              */
   MODIFIER             VARCHAR2(12),                              /*修改人员              */
   MODI_DATE            DATE,                                      /*修改日期              */
   FLAG                 NUMBER,                                    /*资料状态              */
   constraint PK_TB_SYSKB primary key (SYSKB_ID)
);
create sequence SEQ_TB_SYSKB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSKB to public;
grant index  on TB_SYSKB to public;
grant update on TB_SYSKB to public; 
grant delete on TB_SYSKB to public;  
grant insert on TB_SYSKB to public; 
grant select on SEQ_TB_SYSKB to public;   