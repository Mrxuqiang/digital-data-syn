/*
================================================================================
表结构代码:TB_PUBLO
表结构名称:凭证类别表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBLO;
drop index AK_TB_PUBLO;
drop table TB_PUBLO;
create table TB_PUBLO  (
   PUBLO_ID             INTEGER                         not null,  /*凭证类别ID           */
   PUBLO001             VARCHAR2(4)                     not null,  /*凭证类别代码         */
   PUBLO002             VARCHAR2(30)                    not null,  /*凭证类别名称         */
   PUBLO003             VARCHAR2(30)                    not null,  /*凭证类别简称         */
   PUBLO004             INTEGER,                                   /*默认币别ID           */
   PUBLO005             VARCHAR2(2),                               /*限制类型             */
   PUBLO006             VARCHAR2(255),                             /*限制科目             */
   PUBLO007             VARCHAR2(255) ,                            /*限制科目编号             */
   PUBLO008             VARCHAR2(1),                               /*封存                 */
   PUBLO009             INTEGER                         not null,  /*会计主体核算账套ID   */
   PUBLO010             INTEGER ,                                  /*编码类型             */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_PUBLO primary key (PUBLO_ID)
);
create unique index AK_TB_PUBLO on TB_PUBLO (PUBLO001);
create sequence SEQ_TB_PUBLO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLO to public;
grant index  on TB_PUBLO to public;
grant update on TB_PUBLO to public; 
grant delete on TB_PUBLO to public;  
grant insert on TB_PUBLO to public; 
grant select on SEQ_TB_PUBLO to public;   