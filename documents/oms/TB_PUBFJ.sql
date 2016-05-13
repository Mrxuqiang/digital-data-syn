/*
================================================================================
表结构代码:TB_PUBFJ
表结构名称:多边形图形各点位置表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBFJ;
drop index AK_TB_PUBFJ;
drop table TB_PUBFJ;
create table TB_PUBFJ  (
   PUBFJ_ID             INTEGER				  NOT NULL,   /*各点位置ID                                                              */
   PUBFJ001             INTEGER				  NOT NULL,   /*方案id                                                         */
   PUBFJ002             INTEGER				  NOT NULL,   /*图形id                                                         */
   PUBFJ003             INTEGER				  NOT NULL,   /*点序号                                                         */
   PUBFJ004             NUMBER(10,2),                                 /*点距左位置                                                     */
   PUBFJ005             NUMBER(10,2),                                 /*点距顶位置                                                     */
   CREATE_USER          VARCHAR2(12),                                 /*建立人员          */
   USER_GROUP           VARCHAR2(12),                                 /*建立人员部门      */                               
   CREATE_DATE          DATE,                                         /*建立日期          */
   MODIFIER             VARCHAR2(12),                                 /*修改人员          */
   MODI_DATE            DATE,                                         /*修改日期          */
   FLAG                 NUMBER(1),                                    /*资料状态          */
   constraint PK_TB_PUBFJ primary key (PUBFJ_ID)
);
create unique index AK_TB_PUBFJ on TB_PUBFJ (PUBFJ001,PUBFJ002,PUBFJ003);
create sequence SEQ_TB_PUBFJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBFJ to public;
grant index  on TB_PUBFJ to public;
grant update on TB_PUBFJ to public; 
grant delete on TB_PUBFJ to public;  
grant insert on TB_PUBFJ to public; 
grant select on SEQ_TB_PUBFJ to public;   