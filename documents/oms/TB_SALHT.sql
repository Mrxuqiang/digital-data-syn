 /*
================================================================================
表结构代码:TB_SALHT
表结构名称:报价特定属性设定表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SALHT;
drop index AK_TB_SALHT;
drop table TB_SALHT;
create table TB_SALHT  (
   SALHT_ID             INTEGER                         not null,  /*报价特定属性设定id */
   SALHT001             INTEGER                         not null,  /*报价单ID           */
   SALHT002             INTEGER                         not null,  /*报价单商品明细ID   */
   SALHT003             INTEGER                         not null,  /*特定属性分类       */
   SALHT004             INTEGER                         not null,  /*特定属性因子       */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER ,                                   /*资料状态           */
   constraint PK_TB_SALHT primary key (SALHT_ID)
);
create unique index AK_TB_SALHT on TB_SALHT (SALHT002,SALHT003,FLAG);
create sequence SEQ_TB_SALHT minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALHT to public;
grant index  on TB_SALHT to public;
grant update on TB_SALHT to public; 
grant delete on TB_SALHT to public;  
grant insert on TB_SALHT to public; 
grant select on SEQ_TB_SALHT to public;   
