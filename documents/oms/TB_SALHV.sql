/*
================================================================================
表结构代码:TB_SALHV
表结构名称:门店业绩分摊子表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SALHV;
drop index AK_TB_SALHV;
drop table TB_SALHV;
create table TB_SALHV  (
   SALHV_ID             INTEGER                         not null,  /*门店业绩分摊子表ID */
   SALHV001             INTEGER                         not null,  /*门店业绩分摊表ID   */
   SALHV002             INTEGER                         not null,  /*营运组织ID         */
   SALHV003             NUMBER(18,3)                    not null,  /*分摊金额           */ 
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_SALHV primary key (SALHV_ID)
);
create unique index AK_TB_SALHV on TB_SALHV (SALHV001,SALHV002,FLAG);
create sequence SEQ_TB_SALHV minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALHV to public;
grant index  on TB_SALHV to public;
grant update on TB_SALHV to public; 
grant delete on TB_SALHV to public;  
grant insert on TB_SALHV to public; 
grant select on SEQ_TB_SALHV to public;   