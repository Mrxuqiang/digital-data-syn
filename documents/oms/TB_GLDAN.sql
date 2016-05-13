/*
================================================================================
表结构代码:TB_GLDAN
表结构名称:辅助分析设置子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GLDAN;
drop index AK_TB_GLDAN;
drop table TB_GLDAN;
create table TB_GLDAN  (
   GLDAN_ID             INTEGER                         not null,  /*辅助分析子ID         */
   GLDAN001             INTEGER                         not null,  /*辅助分析主ID                 */
   GLDAN002             INTEGER,                                  /*分析项目ID                 */
   GLDAN003             VARCHAR2(255),                             /*属性                 */
   GLDAN004             VARCHAR2(1),                               /*行标题         */
   GLDAN005             VARCHAR2(1),                               /*列标题             */
   GLDAN006             VARCHAR2(1000),                            /*分析选择编码           */
   GLDAN007             VARCHAR2(1),                               /*选择           */
   GLDAN008             VARCHAR2(1000),                            /*分析选择ID           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_GLDAN primary key (GLDAN_ID)
);
create sequence SEQ_TB_GLDAN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GLDAN to public;
grant index  on TB_GLDAN to public;
grant update on TB_GLDAN to public; 
grant delete on TB_GLDAN to public;  
grant insert on TB_GLDAN to public; 
grant select on SEQ_TB_GLDAN to public;   