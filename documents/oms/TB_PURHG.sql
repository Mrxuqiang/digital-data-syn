/*
================================================================================
表结构代码:TB_PURHG
表结构名称:内部补件领用单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PURHG;
drop index AK_TB_PURHG;
drop table TB_PURHG;
create table TB_PURHG  (
   PURHG_ID           INTEGER                             not null,     /*领用单ID           */ 
   PURHG001           INTEGER                              not null,     /*领用单别           */ 
   PURHG002           VARCHAR2(30)                    not null,     /*领用单号           */ 
   PURHG003           DATE                                   not null,     /*领用日期           */ 
   PURHG004           INTEGER                             not null,     /*领用营运组织       */ 
   PURHG005           INTEGER                             not null,     /*领用部门           */ 
   PURHG006           INTEGER                             not null,     /*领用人             */ 
   PURHG007           INTEGER                            not null,     /*领用仓库        */ 
   PURHG008           VARCHAR2(255)                                   /*备注               */ 
   PURHG009           VARCHAR2(1),                                       /*审核状态         */ 
   PURHG010           INTEGER,                                              /*录入人             */ 
   PURHG011           DATE,                                                   /*录入日期           */ 
   PURHG012           INTEGER,                                             /*审核人             */ 
   PURHG013           DATE,                                                   /*审核日期           */ 
   CREATE_USER        VARCHAR2(12),                                /*建立人员           */
   USER_GROUP         VARCHAR2(12),                                 /*建立人员部门       */                               
   CREATE_DATE        DATE,                                              /*建立日期           */
   MODIFIER           VARCHAR2(12),                                   /*修改人员           */
   MODI_DATE          DATE,                                               /*修改日期           */
   FLAG               NUMBER(1),                                        /*资料状态           */
   constraint PK_TB_PURHG primary key (PURHG_ID)
);
create unique index AK_TB_PURHG on TB_PURHG (PURHG_ID,PURHG001, PURHG002);
create sequence SEQ_TB_PURHG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURHG to public;
grant index  on TB_PURHG to public;
grant update on TB_PURHG to public; 
grant delete on TB_PURHG to public;  
grant insert on TB_PURHG to public; 
grant select on SEQ_TB_PURHG to public;   