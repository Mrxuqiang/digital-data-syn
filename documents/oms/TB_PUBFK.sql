/*
================================================================================
表结构代码:TB_PUBFK
表结构名称:表格属性表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBFK;
drop index AK_TB_PUBFK;
drop table TB_PUBFK;
create table TB_PUBFK  (
   PUBFK_ID             INTEGER				  NOT NULL,   /*表格属性ID                                                              */
   PUBFK001             INTEGER				  NOT NULL,   /*方案id                                                   */
   PUBFK002             INTEGER				  NOT NULL,   /*图形id                                                   */
   PUBFK003             NUMBER(5),				      /*行数                                                     */
   PUBFK004             NUMBER(5),                                    /*列数                                                     */
   PUBFK005             NUMBER(10,2),                                 /*表格距左位置                                             */
   PUBFK006             NUMBER(10,2),				      /*表格距上位置                                             */
   PUBFK007             INTEGER,                                      /*表格视图id                                               */
   PUBFK008             INTEGER,                                      /*行高                                                     */
   CREATE_USER          VARCHAR2(12),                                 /*建立人员          */
   USER_GROUP           VARCHAR2(12),                                 /*建立人员部门      */                               
   CREATE_DATE          DATE,                                         /*建立日期          */
   MODIFIER             VARCHAR2(12),                                 /*修改人员          */
   MODI_DATE            DATE,                                         /*修改日期          */
   FLAG                 NUMBER(1),                                    /*资料状态          */
   constraint PK_TB_PUBFK primary key (PUBFK_ID)
);
create unique index AK_TB_PUBFK on TB_PUBFK (PUBFK001,PUBFK002);
create sequence SEQ_TB_PUBFK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBFK to public;
grant index  on TB_PUBFK to public;
grant update on TB_PUBFK to public; 
grant delete on TB_PUBFK to public;  
grant insert on TB_PUBFK to public; 
grant select on SEQ_TB_PUBFK to public;   