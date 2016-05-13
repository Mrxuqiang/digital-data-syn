/*
================================================================================
表结构代码:TB_PUBMA
表结构名称:项目分类表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBMA;
drop index AK_TB_PUBMA;
drop table TB_PUBMA;
create table TB_PUBMA  (
   PUBMA_ID             INTEGER                          not null,  /*项目分类ID         */
   PUBMA001             VARCHAR2(10)                     not null,  /*项目类型编码       */
   PUBMA002             VARCHAR2(60)                    not null,   /*项目类型名称       */
   PUBMA003             VARCHAR2(255),                              /*备注               */
   CREATE_USER          VARCHAR2(12),                               /*建立人员           */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门       */                               
   CREATE_DATE          DATE,                                       /*建立日期           */
   MODIFIER             VARCHAR2(12),                               /*修改人员           */
   MODI_DATE            DATE,                                       /*修改日期           */
   FLAG                 NUMBER(1),                                  /*资料状态           */
   constraint PK_TB_PUBMA primary  key (PUBMA_ID)
);
create unique index AK_TB_PUBMA on TB_PUBMA (PUBMA001);
create sequence SEQ_TB_PUBMA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBMA to public;
grant index  on TB_PUBMA to public;
grant update on TB_PUBMA to public; 
grant delete on TB_PUBMA to public;  
grant insert on TB_PUBMA to public; 
grant select on SEQ_TB_PUBMA to public;   