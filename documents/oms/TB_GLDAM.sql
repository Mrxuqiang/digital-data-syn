/*
================================================================================
表结构代码:TB_GLDAM
表结构名称:辅助分析设置主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GLDAM;
drop index AK_TB_GLDAM;
drop table TB_GLDAM;
create table TB_GLDAM  (
   GLDAM_ID             INTEGER                         not null,  /*辅助分析主ID         */
   GLDAM001             VARCHAR2(4)                     not null,  /*编码                 */
   GLDAM002             VARCHAR2(30)                    not null,  /*名称                 */
   GLDAM003             VARCHAR2(255),                             /*备注                 */
   GLDAM004             VARCHAR2(1)                     not null,  /*余额合计方向         */
   GLDAM005             VARCHAR2(1)                     not null,  /*应用范围             */
   GLDAM006             VARCHAR2(1)                     not null,  /*显示合计行           */
   GLDAM007             VARCHAR2(1)                     not null,  /*显示合计列           */
   GLDAM008             INTEGER ,                                  /*人员ID           */  
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_GLDAM primary key (GLDAM_ID)
);
create unique index AK_TB_GLDAM on TB_GLDAM (GLDAM001);
create sequence SEQ_TB_GLDAM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GLDAM to public;
grant index  on TB_GLDAM to public;
grant update on TB_GLDAM to public; 
grant delete on TB_GLDAM to public;  
grant insert on TB_GLDAM to public; 
grant select on SEQ_TB_GLDAM to public; 