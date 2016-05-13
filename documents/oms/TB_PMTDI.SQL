/*
================================================================================
表结构代码:TB_PMTDI
表结构名称:单品买赠促销单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTDI;
drop index AK_TB_PMTDI;
drop table TB_PMTDI;
create table TB_PMTDI  (
   PMTDI_ID             INTEGER                         not null,  /*单品买赠单ID      */
   PMTDI001             INTEGER                         not null,  /*单别ID            */
   PMTDI002             VARCHAR2(30)                    not null,  /*促销单号          */
   PMTDI003             DATE                            not null,  /*单据日期          */
   PMTDI004             INTEGER                         not null,  /*负责营运组织      */
   PMTDI005             INTEGER                         not null,  /*负责部门ID        */
   PMTDI006             INTEGER                         not null,  /*负责人员ID        */
   PMTDI007             INTEGER                         not null,  /*促销主题ID        */
   PMTDI008             VARCHAR2(255),                             /*促销描述          */
   PMTDI009	         DATE                               not null,   /*促销起日          */
   PMTDI010	         DATE                               not null,   /*促销止日         */
   PMTDI011	        VARCHAR2(8) ,                                /*促销时段1   */
   PMTDI012	        VARCHAR2(8) ,                                /*促销时段1   */
   PMTDI013	        VARCHAR2(8) ,                                /*促销时段2   */
   PMTDI014	        VARCHAR2(8) ,                                /*促销时段2   */
   PMTDI015	        VARCHAR2(8) ,                                /*促销时段3   */
   PMTDI016	        VARCHAR2(8) ,                                /*促销时段3   */
   PMTDI017	        VARCHAR2(1) ,                                /*允许多张销售单参与买赠   */   
   PMTDI018             INTEGER,                                   /*录入人ID          */
   PMTDI019             DATE,                                      /*录入日期          */
   PMTDI020             INTEGER,                                   /*审核人ID          */
   PMTDI021             DATE,                                      /*审核日期          */
   PMTDI022             VARCHAR2(1)                     not null,  /*审核状态          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTDI primary key (PMTDI_ID)
);
create unique index AK_TB_PMTDI on TB_PMTDI (PMTDI002);
create sequence SEQ_TB_PMTDI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTDI to public;
grant index  on TB_PMTDI to public;
grant update on TB_PMTDI to public; 
grant delete on TB_PMTDI to public;  
grant insert on TB_PMTDI to public; 
grant select on SEQ_TB_PMTDI to public;   