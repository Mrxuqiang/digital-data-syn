/*
================================================================================
表结构代码:TB_PUBII
表结构名称:摊位分类表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBII;
drop index AK_TB_PUBII;
drop table TB_PUBII;
create table TB_PUBII  (
   PUBII_ID             INTEGER                         not null,  /*摊位分类ID                 */
   PUBII001             VARCHAR2(4)                     not null,  /*摊位分类代码               */
   PUBII002             VARCHAR2(20)                    not null,  /*摊位分类名称               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员			*/
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门		*/                               
   CREATE_DATE          DATE,                                      /*建立日期			*/
   MODIFIER             VARCHAR2(12),                              /*修改人员			*/
   MODI_DATE            DATE,                                      /*修改日期			*/
   FLAG                 NUMBER(1),                                 /*资料状态			*/
   constraint PK_TB_PUBII primary key (PUBII_ID)
);
create unique index AK_TB_PUBII on TB_PUBII (PUBII001);
create sequence SEQ_TB_PUBII minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBII to public;
grant index  on TB_PUBII to public;
grant update on TB_PUBII to public; 
grant delete on TB_PUBII to public;  
grant insert on TB_PUBII to public; 
grant select on SEQ_TB_PUBII to public;   