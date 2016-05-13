/*
================================================================================
表结构代码:TB_PURHA
表结构名称:补件申请单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PURHA;
drop index AK_TB_PURHA;
drop table TB_PURHA;
create table TB_PURHA  (
   PURHA_ID           INTEGER                             not null,     /*申请单ID           */ 
   PURHA001           INTEGER                             not null,     /*申请单别           */ 
   PURHA002           VARCHAR2(30)                        not null,     /*申请单号           */ 
   PURHA003           DATE                                not null,     /*申请日期           */ 
   PURHA004           INTEGER                             not null,     /*申请营运组织       */ 
   PURHA005           INTEGER                             not null,     /*申请部门           */ 
   PURHA006           INTEGER                             not null,     /*申请人             */ 
   PURHA007           INTEGER,                                          /*客户               */ 
   PURHA008           VARCHAR2(1)                         not null,     /*申请类型           */ 
   PURHA009           VARCHAR2(255)                                     /*备注               */ 
   PURHA010           VARCHAR2(1),                                      /*审核状态           */ 
   PURHA011           INTEGER,                                          /*录入人             */ 
   PURHA012           DATE,                                             /*录入日期           */ 
   PURHA013           INTEGER,                                          /*审核人             */ 
   PURHA014           DATE,                                             /*审核日期           */ 
   CREATE_USER        VARCHAR2(12),                                     /*建立人员           */
   USER_GROUP         VARCHAR2(12),                                     /*建立人员部门       */                               
   CREATE_DATE        DATE,                                             /*建立日期           */
   MODIFIER           VARCHAR2(12),                                     /*修改人员           */
   MODI_DATE          DATE,                                             /*修改日期           */
   FLAG               NUMBER(1),                                        /*资料状态           */
   constraint PK_TB_PURHA primary key (PURHA_ID)
);
create unique index AK_TB_PURHA on TB_PURHA (PURHA_ID,PURHA001, PURHA002);
create sequence SEQ_TB_PURHA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURHA to public;
grant index  on TB_PURHA to public;
grant update on TB_PURHA to public; 
grant delete on TB_PURHA to public;  
grant insert on TB_PURHA to public; 
grant select on SEQ_TB_PURHA to public;   