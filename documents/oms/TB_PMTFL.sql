/*
================================================================================
表结构代码:TB_PMTFL
表结构名称:销售券发放单
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTFK;
drop index AK_TB_PMTFK;
drop table TB_PMTFK;
create table TB_PMTFL  (
   PMTFL_ID             INTEGER                         not null,  /*销售券发放单id*/
   PMTFL001             INTEGER                         not null,  /*销售单ID */
   PMTFL002             VARCHAR2(2),				   /*促销类型*/		
   PMTFL003             INTEGER,				   /*促销单ID */
   PMTFL004             INTEGER,			           /*券种ID   */
   PMTFL005             NUMBER(12,2),				   /*实交款金额*/
   PMTFL006             NUMBER(12,2),				   /*参与返券交款金额*/
   PMTFL007             NUMBER(12,2),				   /*累计笔数*/
   PMTFL008             NUMBER(12,2),				   /*应返券金额*/
   PMTFL009             NUMBER(12)                    ,  /*返券张数         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTFL primary key (PMTFL_ID)
);
create unique index AK_TB_PMTFL on TB_PMTFL (PMTFL001,PMTFL003);
create sequence SEQ_TB_PMTFL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTFL to public;
grant index  on TB_PMTFL to public;
grant update on TB_PMTFL to public; 
grant delete on TB_PMTFL to public;  
grant insert on TB_PMTFL to public; 
grant select on SEQ_TB_PMTFL to public;  