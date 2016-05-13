/*
================================================================================
表结构代码:TB_PUBTE 
表结构名称:特定因子表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_PUBTE;
drop index AK_TB_PUBTE;
drop table TTB_PUBTE;
create table TB_PUBTE  (
   PUBTE_ID             INTEGER                         not null,  /*特定因子ID         */
   PUBTE001             VARCHAR2(30)                    not null,  /*特定因子编号       */
   PUBTE002             VARCHAR2(30)                    not null,  /*特定因子名称       */
   PUBTE003             INTEGER                         not null,  /*特定属性分类ID     */
   PUBTE004             VARCHAR2(255)                              /*备注               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_PUBTE primary key (PUBTE_ID)
);
create unique index AK_TB_PUBTE on TB_PUBTE (PUBTE001,FLAG);
create sequence SEQ_TB_PUBTE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBTE to public;
grant index  on TB_PUBTE to public;
grant update on TB_PUBTE to public; 
grant delete on TB_PUBTE to public;  
grant insert on TB_PUBTE to public; 
grant select on SEQ_TB_PUBTE to public;   