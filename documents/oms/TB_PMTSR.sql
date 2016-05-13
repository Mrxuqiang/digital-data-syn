

/*
================================================================================
表结构代码:TB_PMTSR
表结构名称:交款折扣单不参与收付款表
表结构目的:
================================================================================
*/

--drop sequence SEQ_TB_PMTSR;
--drop index AK_TB_PMTSR;
--drop table TB_PMTSR;
create table TB_PMTSR  (
   PMTSR_ID             INTEGER                         not null,  /*交款直降生效范围ID*/
   PMTSR001             INTEGER                         not null,  /*交款直降单ID      */
   PMTSR002             INTEGER                         not null,  /*收付款ID          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER,                                 /*资料状态          */
   constraint PK_TB_PMTSR primary key (PMTSR_ID)
);
create unique index AK_TB_PMTSR on TB_PMTSR (PMTSR001,PMTSR002,FLAG);
create sequence SEQ_TB_PMTSR minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTSR to public;
grant index  on TB_PMTSR to public;
grant update on TB_PMTSR to public; 
grant delete on TB_PMTSR to public;  
grant insert on TB_PMTSR to public; 
grant select on SEQ_TB_PMTSR to public;   
