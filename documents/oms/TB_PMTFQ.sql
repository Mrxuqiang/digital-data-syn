/*
================================================================================
表结构代码:TB_PMTFP
表结构名称:返现回收登记表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTFQ;
drop index AK_TB_PMTFQ;
drop table TB_PMTFQ;
create table TB_PMTFQ  (
   PMTFQ_ID             INTEGER                         not null,  /*返现回收登记ID    */
   PMTFQ001             INTEGER                         not null,  /*销退单ID          */
   PMTFQ002             VARCHAR2(2)                     not null,  /*促销类型          */
   PMTFQ003             INTEGER                         not null,  /*促销单ID          */
   PMTFQ004             NUMBER(18,2)				,  /*实交款金额        */
   PMTFQ005             NUMBER(12,2)				,  /*参与返现交款金额  */
   PMTFQ006             NUMBER(12)				,  /*累计笔数          */
   PMTFQ007             NUMBER(12,2)				,  /*应返现金额        */
   PMTFQ008             NUMBER(12,2)				,  /*实返现金额        */
   PMTFQ009             NUMBER(12,2)				,  /*已回收现金额      */
   PMTFQ010             NUMBER(12,2)				,  /*本次应回收现金额  */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTFI primary key (PMTFP_ID)
);
--create unique index AK_TB_PMTFI on TB_PMTFI (PMTFP001,PMTFP002,PMTFP003);
create sequence SEQ_TB_PMTFQ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTFQ to public;
grant index  on TB_PMTFQ to public;
grant update on TB_PMTFQ to public; 
grant delete on TB_PMTFQ to public;  
grant insert on TB_PMTFQ to public; 
grant select on SEQ_TB_PMTFQ to public;   