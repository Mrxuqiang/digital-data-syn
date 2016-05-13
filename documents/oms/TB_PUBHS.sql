/*
================================================================================
表结构代码:TB_PUBHS
表结构名称:商品策略主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBHS;
drop index AK_TB_PUBHS;
drop table TB_PUBHS;
create table TB_PUBHS  (
   PUBHS_ID           INTEGER                      not null,       /*商品策略ID             */ 
   PUBHS001           VARCHAR2(30)                 not null,       /*商品策略编号           */ 
   PUBHS002           VARCHAR2(30)                 not null,       /*商品策略名称           */ 
   PUBHS003           INTEGER                      not null,       /*营运组织               */ 
   PUBHS004           INTEGER                      not null,       /*制定人                 */ 
   PUBHS005           DATE                         not null,       /*制定日期               */ 
   PUBHS006           VARCHAR2(4)                  not null,       /*变更序号               */ 
   PUBHS007           INTEGER,                                     /*审核人                 */ 
   PUBHS008           DATE,                                        /*审核日期               */ 
   PUBHS009           VARCHAR2(1),                                 /*审核状态               */ 
   PUBHS010           VARCHAR2(255),                               /*备注                   */ 
   CREATE_USER        VARCHAR2(12),                                /*建立人员          */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门      */                               
   CREATE_DATE        DATE,                                        /*建立日期          */
   MODIFIER           VARCHAR2(12),                                /*修改人员          */
   MODI_DATE          DATE,                                        /*修改日期          */
   FLAG               NUMBER(1),                                   /*资料状态          */
   constraint PK_TB_PUBHS primary key (PUBHS_ID)
);
create unique index AK_TB_PUBHS on TB_PUBHS (PUBHS001,PUBHS002);
create sequence SEQ_TB_PUBHS minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHS to public;
grant index  on TB_PUBHS to public;
grant update on TB_PUBHS to public; 
grant delete on TB_PUBHS to public;  
grant insert on TB_PUBHS to public; 
grant select on SEQ_TB_PUBHS to public;   