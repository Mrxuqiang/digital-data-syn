/*
================================================================================
表结构代码:TB_PUBCL
表结构名称:供应商基本资料
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_PUBCL;
drop index AK_TB_PUBCL;
drop table TB_PUBCL;
create table TB_PUBCL  (
   PUBCL_ID             INTEGER                         not null,  /*供应商基本资料ID   */
   PUBCL001             INTEGER,                                   /*客商ID             */
   PUBCL002             INTEGER,                                   /*内部营运组织ID     */
   PUBCL003             VARCHAR2(255),                             /*备注               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER ,                                   /*资料状态           */
   constraint PK_TB_PUBCL primary key (PUBCL_ID)
);
create unique index AK_TB_PUBCL on TB_PUBCL (PUBCL001,FLAG);
create sequence SEQ_TB_PUBCL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBCL to public;
grant index  on TB_PUBCL to public;
grant update on TB_PUBCL to public; 
grant delete on TB_PUBCL to public;  
grant insert on TB_PUBCL to public; 
grant select on SEQ_TB_PUBCL to public;   