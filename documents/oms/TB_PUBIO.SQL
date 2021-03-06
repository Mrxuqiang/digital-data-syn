/*
================================================================================
表结构代码:TB_PUBIO
表结构名称:分类自定义映射表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBIO;
drop index AK_TB_PUBIO;
drop table TB_PUBIO;
create table TB_PUBIO  (
   PUBIO_ID             INTEGER                         not null,  /*分类自定义映射表ID              */
   PUBIO001             INTEGER                         not null,  /*分类自定义表ID              */
   PUBIO002             VARCHAR2(100)                   not null,  /*映射作业                    */
   PUBIO003             VARCHAR2(100)                   not null,  /*映射表                      */
   PUBIO004             VARCHAR2(100),                             /*映射字段ID                  */
   PUBIO005             VARCHAR2(100),                             /*映射字段二编码              */
   PUBIO006             VARCHAR2(100),                             /*映射字段三名称              */
   PUBIO007             VARCHAR2(100),                             /*映射左视图                  */
   PUBIO008             VARCHAR2(100),                             /*映射右视图                  */
   PUBIO009             VARCHAR2(100),                             /*映射分类名称                */
   PUBIO010             VARCHAR2(100),                             /*映射字段二标题名              */
   PUBIO011             VARCHAR2(100),                             /*映射字段三标题名              */
   PUBIO012             VARCHAR2(100),                             /*备用字段1                  */
   PUBIO013             VARCHAR2(100),                             /*备用字段2               */
   PUBIO014             VARCHAR2(100),                             /*备用字段3              */
   PUBIO015             VARCHAR2(100),                             /*备用字段4              */
   CREATE_USER          VARCHAR2(12),                              /*创建人                      */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                */                               
   CREATE_DATE          DATE,                                      /*建立日期                    */
   MODIFIER             VARCHAR2(12),                              /*修改人员                    */
   MODI_DATE            DATE,                                      /*修改日期                    */
   FLAG                 NUMBER(1),                                 /*资料状态                    */
   constraint PK_TB_PUBIO primary key (PUBIO_ID)
);
                                 
create unique index AK_TB_PUBIO on TB_PUBIO (PUBIO001,PUBIO002,PUBIO004,FLAG);
create sequence SEQ_TB_PUBIO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBIO to public;
grant index  on TB_PUBIO to public;
grant update on TB_PUBIO to public; 
grant delete on TB_PUBIO to public;  
grant insert on TB_PUBIO to public; 
grant select on SEQ_TB_PUBIO to public;   