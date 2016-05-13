/*
================================================================================
表结构代码:TB_PUBHU
表结构名称:商品策略变更主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBHU;
drop index AK_TB_PUBHU;
drop table TB_PUBHU;
create table TB_PUBHU  (
   PUBHU_ID           INTEGER                      not null,       /*商品策略变更ID         */ 
   PUBHU001           INTEGER                      not null,       /*商品策略ID             */ 
   PUBHU002           VARCHAR2(30)                 not null,       /*商品策略名称           */ 
   PUBHU003           INTEGER                      not null,       /*营运组织               */ 
   PUBHU004           INTEGER                      not null,       /*制定人                 */ 
   PUBHU005           DATE                         not null,       /*制定日期               */ 
   PUBHU006           VARCHAR2(4)                  not null,       /*变更序号               */ 
   PUBHU007           INTEGER,                                     /*审核人                 */ 
   PUBHU008           DATE,                                        /*审核日期               */ 
   PUBHU009           VARCHAR2(1),                                 /*审核状态               */ 
   PUBHU010           VARCHAR2(255),                               /*备注                   */ 
   CREATE_USER        VARCHAR2(12),                                /*建立人员          */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门      */                               
   CREATE_DATE        DATE,                                        /*建立日期          */
   MODIFIER           VARCHAR2(12),                                /*修改人员          */
   MODI_DATE          DATE,                                        /*修改日期          */
   FLAG               NUMBER(1),                                   /*资料状态          */
   constraint PK_TB_PUBHU primary key (PUBHU_ID)
);
create unique index AK_TB_PUBHU on TB_PUBHU (PUBHU001,PUBHU002);
create sequence SEQ_TB_PUBHU minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHU to public;
grant index  on TB_PUBHU to public;
grant update on TB_PUBHU to public; 
grant delete on TB_PUBHU to public;  
grant insert on TB_PUBHU to public; 
grant select on SEQ_TB_PUBHU to public;   