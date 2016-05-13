/*
================================================================================
表结构代码:TB_SERDC
表结构名称:客户回访单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERDC;
drop index AK_TB_SERDC;
drop table TB_SERDC;
create table TB_SERDC  (
   SERDC_ID           INTEGER                           not null,                 /*回访单ID              */
   SERDC001           INTEGER                           not null,                 /*回访单别              */
   SERDC002           VARCHAR2(30)                      not null,                 /*回访单号              */
   SERDC003           INTEGER                           not null,                 /*安装服务单号          */
   SERDC004           VARCHAR2(1)                       not null,                 /*来源单据类型          */
   SERDC005           VARCHAR2(30)                      not null,                 /*来源单号              */
   SERDC006           DATE                              not null,                 /*回访日期              */
   SERDC007           VARCHAR2(1)                       not null,                 /*服务类型              */
   SERDC008           VARCHAR2(1)                       not null,                 /*客户类型              */
   SERDC009           VARCHAR2(10),                                               /*顾客姓名              */
   SERDC010           VARCHAR2(255),                                              /*送货地址              */
   SERDC011           VARCHAR2(30),                                               /*联系方式              */
   SERDC012           DATE,                                                       /*实际完成日            */
   SERDC013           INTEGER                           not null,                 /*营运组织              */
   SERDC014           VARCHAR2(30),                                               /*回访人                */
   SERDC015           VARCHAR2(1)                       not null,                 /*问题1                 */
   SERDC016           VARCHAR2(1)                       not null,                 /*问题2                 */     
   SERDC017           VARCHAR2(1)                       not null,                 /*问题3                 */     
   SERDC018           VARCHAR2(1)                       not null,                 /*问题4                 */
   SERDC019           VARCHAR2(1)                       not null,                 /*问题5                 */
   SERDC020           VARCHAR2(1)                       not null,                 /*问题6                 */
   SERDC021           VARCHAR2(1)                       not null,                 /*问题7                 */
   SERDC022           VARCHAR2(1)                       not null,                 /*问题8                 */
   SERDC023           VARCHAR2(1)                       not null,                 /*问题9                 */
   SERDC024           VARCHAR2(1)                       not null,                 /*问题10                */
   SERDC025           NUMBER(12,2),                                               /*迟到时间              */
   SERDC026           VARCHAR2(255),                                              /*原因                  */
   SERDC027           VARCHAR2(255),                                              /*其他渠道              */
   SERDC028           VARCHAR2(255),                                              /*建议要求              */
   SERDC029           VARCHAR2(1),                                                /*审核状态              */
   SERDC030           INTEGER,                                                    /*录入人员              */
   SERDC031           DATE,                                                       /*录入日期              */
   SERDC032           INTEGER,                                                    /*审核人员              */ 
   SERDC033           DATE,                                                       /*审核日期              */ 
   CREATE_USER        VARCHAR2(1),                                                /*建立人员             */
   USER_GROUP         VARCHAR2(12),                                               /*建立人员部门         */                               
   CREATE_DATE        DATE,                                                       /*建立日期             */
   MODIFIER           VARCHAR2(12),                                               /*修改人员             */
   MODI_DATE          DATE,                                                       /*修改日期             */
   FLAG               NUMBER(1),                                                  /*资料状态             */
   constraint PK_TB_SERDC primary key (SERDC_ID)
);
create unique index AK_TB_SERDC on TB_SERDC (SERDC001,SERDC002);
create sequence SEQ_TB_SERDC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERDC to public;
grant index  on TB_SERDC to public;
grant update on TB_SERDC to public; 
grant delete on TB_SERDC to public;  
grant insert on TB_SERDC to public; 
grant select on SEQ_TB_SERDC to public;   