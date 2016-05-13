/*
================================================================================
表结构代码:TB_SALHL
表结构名称:销售特定属性设定表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SALHL;
drop index AK_TB_SALHL;
drop table TB_SALHL;
create table TB_SALHL  (
   SALHL_ID             INTEGER                         not null,  /*销售特定属性设定id */
   SALHL001             INTEGER                         not null,  /*销售单ID           */
   SALHL002             INTEGER                         not null,  /*销售单商品明细ID   */
   SALHL003             INTEGER                         not null,  /*特定属性分类       */
   SALHL004             INTEGER                         not null,  /*特定属性因子       */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER ,                                   /*资料状态           */
   constraint PK_TB_SALHL primary key (SALHL_ID)
);
create unique index AK_TB_SALHL on TB_SALHL (SALHL002,SALHL003,FLAG);
create sequence SEQ_TB_SALHL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALHL to public;
grant index  on TB_SALHL to public;
grant update on TB_SALHL to public; 
grant delete on TB_SALHL to public;  
grant insert on TB_SALHL to public; 
grant select on SEQ_TB_SALHL to public;   