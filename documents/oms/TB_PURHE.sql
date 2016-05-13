/*
================================================================================
表结构代码:TB_PURHE
表结构名称:客户补件领用单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PURHE;
drop index AK_TB_PURHE;
drop table TB_PURHE;
create table TB_PURHE  (
   PURHE_ID           INTEGER                             not null,     /*领用单ID           */ 
   PURHE001           INTEGER                             not null,     /*领用单别           */ 
   PURHE002           VARCHAR2(30)                        not null,     /*领用单号           */ 
   PURHE003           DATE                                not null,     /*领用日期           */ 
   PURHE004           INTEGER                             not null,     /*申请单号           */    
   PURHE005           INTEGER                             not null,     /*领用营运组织       */ 
   PURHE006           INTEGER                             not null,     /*领用部门           */ 
   PURHE007           INTEGER                             not null,     /*领用人             */ 
   PURHE008           VARCHAR2(1)                         not null,     /*领用类型           */
   PURHE009           INTEGER                             not null,     /*客户ID             */    
   PURHE010           VARCHAR2(255),                                    /*备注               */ 
   PURHE011           VARCHAR2(1),                                      /*审核状态           */ 
   PURHE012           INTEGER,                                          /*录入人             */ 
   PURHE013           DATE,                                             /*录入日期           */ 
   PURHE014           INTEGER,                                          /*审核人             */ 
   PURHE015           DATE,                                             /*审核日期           */ 
   CREATE_USER        VARCHAR2(12),                                     /*建立人员           */
   USER_GROUP         VARCHAR2(12),                                     /*建立人员部门       */                               
   CREATE_DATE        DATE,                                             /*建立日期           */
   MODIFIER           VARCHAR2(12),                                     /*修改人员           */
   MODI_DATE          DATE,                                             /*修改日期           */
   FLAG               NUMBER(1),                                        /*资料状态           */
   constraint PK_TB_PURHE primary key (PURHE_ID)
);
create unique index AK_TB_PURHE on TB_PURHE (PURHE_ID,PURHE001, PURHE002);
create sequence SEQ_TB_PURHE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURHE to public;
grant index  on TB_PURHE to public;
grant update on TB_PURHE to public; 
grant delete on TB_PURHE to public;  
grant insert on TB_PURHE to public; 
grant select on SEQ_TB_PURHE to public;   