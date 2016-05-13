/*
================================================================================
表结构代码:TB_PUBLI
表结构名称:科目类型定义表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBLI;
drop index AK_TB_PUBLI;
drop table TB_PUBLI;
create table TB_PUBLI  (
   PUBLI_ID             INTEGER                         not null,  /*科目类型ID           */
   PUBLI001             VARCHAR2(4)                     not null,  /*科目类型代码         */
   PUBLI002             VARCHAR2(30)                    not null,  /*科目类型名称         */
   PUBLI003             VARCHAR2(2)                     not null,  /*余额默认方向         */
   PUBLI004             VARCHAR2(2)                     not null,  /*试算平衡方向         */
   PUBLI005             VARCHAR2(2)                     not null,  /*类别                 */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_PUBLI primary key (PUBLI_ID)
);
create unique index AK_TB_PUBLI on TB_PUBLI (PUBLI001);
create sequence SEQ_TB_PUBLI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLI to public;
grant index  on TB_PUBLI to public;
grant update on TB_PUBLI to public; 
grant delete on TB_PUBLI to public;  
grant insert on TB_PUBLI to public; 
grant select on SEQ_TB_PUBLI to public;   