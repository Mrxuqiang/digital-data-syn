/*
================================================================================
表结构代码:TB_SALHU
表结构名称:门店业绩分摊表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SALHU;
drop index AK_TB_SALHU;
drop table TB_SALHU;
create table TB_SALHU  (
   SALHU_ID             INTEGER                         not null,  /*门店业绩分摊ID     */
   SALHU001             INTEGER                         not null,  /*销售单ID           */ 
   SALHU002             NUMBER(18,3)                    not null,  /*已退货金额         */ 
   SALHU003             NUMBER(18,3)                    not null,  /*总业绩             */
   SALHU004             DATE                            not null,  /*审核日期           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_SALHU primary key (SALHU_ID)
);
create unique index AK_TB_SALHU on TB_SALHU (SALHU_ID,SALHU001,FLAG);
create sequence SEQ_TB_SALHU minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALHU to public;
grant index  on TB_SALHU to public;
grant update on TB_SALHU to public; 
grant delete on TB_SALHU to public;  
grant insert on TB_SALHU to public; 
grant select on SEQ_TB_SALHU to public;   