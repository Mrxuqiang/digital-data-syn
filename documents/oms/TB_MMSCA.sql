/*
================================================================================
表结构代码:TB_MMSCA
表结构名称：领用单主表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_MMSCA;
drop index AK_TB_MMSCA;
drop table TB_MMSCA;
create table TB_MMSCA  (
   MMSCA_ID           INTEGER                          not null,         /*领用单主id     */   
   MMSCA001           INTEGER                          not null,         /*单别id           */   
   MMSCA002           VARCHAR2(30)                     not null,         /*单号             */  
   MMSCA003           DATE                             not null,         /*领用日期         */ 
   MMSCA004           INTEGER,                                           /*领用人员id       */  
   MMSCA005           INTEGER,                                           /*领用部门id       */
   MMSCA006           INTEGER,                                           /*营运组织id       */
   MMSCA007           VARCHAR2(256),                                     /*备注             */
   MMSCA008           DATE,                                              /*录入日期         */
   MMSCA009           INTEGER,                                           /*录入人id         */ 
   MMSCA010           DATE,                                              /*审核日期         */
   MMSCA011           INTEGER,                                           /*审核人id          */ 
   MMSCA012           VARCHAR2(1),                                       /*单据状态          */         
   CREATE_USER        VARCHAR2(1),                                       /*建立人员          */
   USER_GROUP         VARCHAR2(12),                                      /*建立人员部门      */                               
   CREATE_DATE        DATE,                                              /*建立日期          */
   MODIFIER           VARCHAR2(12),                                      /*修改人员          */
   MODI_DATE          DATE,                                              /*修改日期          */
   FLAG               NUMBER(1),                                         /*资料状态          */
   constraint PK_TB_MMSCA primary key (MMSCA_ID)
);
create unique index AK_TB_MMSCA on TB_MMSCA (MMSCA001,MMSCA002,FLAG);
create sequence SEQ_TB_MMSCA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MMSCA to public;
grant index  on TB_MMSCA to public;
grant update on TB_MMSCA to public; 
grant delete on TB_MMSCA to public;  
grant insert on TB_MMSCA to public; 
grant select on SEQ_TB_MMSCA to public;   