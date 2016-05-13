/*
================================================================================
表结构代码:TB_PUBTF 
表结构名称:商品特定属性分类启用表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_PUBTF;
drop index AK_TB_PUBTF;
drop table TB_PUBTF;
create table TB_PUBTF  (
   PUBTF_ID             INTEGER                         not null,  /*商品特定属性分类启用ID   */
   PUBTF001             INTEGER                         not null,  /*商品ID             */
   PUBTF002             INTEGER                         not null,  /*特定属性分类ID     */
   PUBTF003             VARCHAR2(255)                              /*备注               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                 /*资料状态           */
   constraint PK_TB_PUBTF primary key (PUBTF_ID)
);
create unique index AK_TB_PUBTF on TB_PUBTF (PUBTF001,PUBTF002,FLAG);
create sequence SEQ_TB_PUBTF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBTF to public;
grant index  on TB_PUBTF to public;
grant update on TB_PUBTF to public; 
grant delete on TB_PUBTF to public;  
grant insert on TB_PUBTF to public; 
grant select on SEQ_TB_PUBTF to public;   