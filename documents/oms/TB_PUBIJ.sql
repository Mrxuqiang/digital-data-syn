/*
================================================================================
表结构代码:TB_PUBIJ
表结构名称:摊位图形颜色设置
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBIJ;
drop index AK_TB_PUBIJ;
drop table TB_PUBIJ;
create table TB_PUBIJ  (
   PUBIJ_ID             INTEGER                         not null,  /*摊位图形颜色ID             */
   PUBIJ001             VARCHAR2(2)                     not null,  /*状态项目                   */
   PUBIJ002             VARCHAR2(20)                    not null,  /*状态值                     */
   PUBIJ003             INTEGER                         not null,  /*颜色                       */
   CREATE_USER          VARCHAR2(12),                              /*建立人员			*/
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门		*/                               
   CREATE_DATE          DATE,                                      /*建立日期			*/
   MODIFIER             VARCHAR2(12),                              /*修改人员			*/
   MODI_DATE            DATE,                                      /*修改日期			*/
   FLAG                 NUMBER(1),                                 /*资料状态			*/
   constraint PK_TB_PUBIJ primary key (PUBIJ_ID)
);
create unique index AK_TB_PUBIJ on TB_PUBIJ (PUBIJ001,PUBIJ002);
create sequence SEQ_TB_PUBIJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBIJ to public;
grant index  on TB_PUBIJ to public;
grant update on TB_PUBIJ to public; 
grant delete on TB_PUBIJ to public;  
grant insert on TB_PUBIJ to public; 
grant select on SEQ_TB_PUBIJ to public;   