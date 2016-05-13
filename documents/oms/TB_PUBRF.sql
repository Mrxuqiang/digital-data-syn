/*
================================================================================
表结构代码:TB_PUBRF
表结构名称:外部折算主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBRF;
drop index AK_TB_PUBRF;
drop table TB_PUBRF;
create table TB_PUBRF  (
   PUBRF_ID             INTEGER                         not null,  /*外部折算主ID              */
   PUBRF001             VARCHAR2(10)                    not null,  /*折算编号                  */
   PUBRF002             VARCHAR2(30)                    not null,  /*折算业务名称              */
   PUBRF003             INTEGER                         not null,  /*公司ID                    */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                  */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门              */                               
   CREATE_DATE          DATE,                                      /*建立日期                  */
   MODIFIER             VARCHAR2(12),                              /*修改人员                  */
   MODI_DATE            DATE,                                      /*修改日期                  */
   FLAG                 NUMBER(1),                                 /*资料状态                  */
   constraint PK_TB_PUBRF primary key (PUBRF_ID)
);
create unique index AK_TB_PUBRF on TB_PUBRF (PUBRF001);
create sequence SEQ_TB_PUBRF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRF to public;
grant index  on TB_PUBRF to public;
grant update on TB_PUBRF to public; 
grant delete on TB_PUBRF to public;  
grant insert on TB_PUBRF to public; 
grant select on SEQ_TB_PUBRF to public;   