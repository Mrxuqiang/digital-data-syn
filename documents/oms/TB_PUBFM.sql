/*
================================================================================
表结构代码:TB_PUBFM
表结构名称:表格单元合并表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBFM;
drop index AK_TB_PUBFM;
drop table TB_PUBFM;
create table TB_PUBFM  (
   PUBFM_ID             INTEGER			  NOT NULL,   /*表格单元合并ID               */
   PUBFM001             INTEGER			  NOT NULL,   /*方案id                       */
   PUBFM002             INTEGER			  NOT NULL,   /*图形id                       */
   PUBFM003             NUMBER(5),    			      /*合并序号                     */
   PUBFM004             NUMBER(5),                            /*起始行                       */
   PUBFM005             NUMBER(5),                            /*起始列                       */
   PUBFM006             NUMBER(5), 		              /*结束行                       */
   PUBFM007             NUMBER(5),                            /*结束列                       */
   CREATE_USER          VARCHAR2(12),                         /*建立人员          */
   USER_GROUP           VARCHAR2(12),                         /*建立人员部门      */                               
   CREATE_DATE          DATE,                                 /*建立日期          */
   MODIFIER             VARCHAR2(12),                         /*修改人员          */
   MODI_DATE            DATE,                                 /*修改日期          */
   FLAG                 NUMBER(1),                            /*资料状态          */
   constraint PK_TB_PUBFM primary key (PUBFM_ID)
);
create unique index AK_TB_PUBFM on TB_PUBFM (PUBFM001,PUBFM002,PUBFM003);
create sequence SEQ_TB_PUBFM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBFM to public;
grant index  on TB_PUBFM to public;
grant update on TB_PUBFM to public; 
grant delete on TB_PUBFM to public;  
grant insert on TB_PUBFM to public; 
grant select on SEQ_TB_PUBFM to public;   