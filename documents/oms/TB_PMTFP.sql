/*
================================================================================
表结构代码:TB_PMTFP
表结构名称:交款返现登记表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTFP;
drop index AK_TB_PMTFP;
drop table TB_PMTFP;
create table TB_PMTFP  (
   PMTFP_ID             INTEGER                         not null,  /*交款返现登记表    */
   PMTFP001             INTEGER                         not null,  /*销售单ID          */
   PMTFP002             VARCHAR2(2)                     not null,  /*促销类型          */
   PMTFP003             INTEGER                         not null,  /*促销单ID          */
   PMTFP004             NUMBER(18,2)				,  /*实交款金额        */
   PMTFP005             NUMBER(12,2)				,  /*参与返现交款金额  */
   PMTFP006             NUMBER(12)				,  /*累计笔数          */
   PMTFP007             NUMBER(12,2)				,  /*应返现金额        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTFI primary key (PMTFP_ID)
);
--create unique index AK_TB_PMTFI on TB_PMTFI (PMTFP001);
create sequence SEQ_TB_PMTFI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTFP to public;
grant index  on TB_PMTFP to public;
grant update on TB_PMTFP to public; 
grant delete on TB_PMTFP to public;  
grant insert on TB_PMTFP to public; 
grant select on SEQ_TB_PMTFP to public;   