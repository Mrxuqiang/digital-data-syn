/*
================================================================================
表结构代码:TB_PMTQC
表结构名称:活动抽奖单赠品表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTQC;
drop index AK_TB_PMTQC;
drop table TB_PMTQC;
create table TB_PMTQC  (
   PMTQC_ID             INTEGER                         not null,  /*活动抽奖单赠品ID              */
   PMTQC001             INTEGER                         not null,  /*活动抽奖单ID                  */
   PMTQC002             VARCHAR2(10),                              /*抽奖等级                      */
   PMTQC003             INTEGER                         not null,  /*赠品代码ID                    */
   PMTQC004             INTEGER                         not null,  /*单位ID                        */
   PMTQC005             NUMBER(12,2),                              /*赠品数量                      */
   PMTQC006             NUMBER(12,2),                              /*单价                          */
   PMTQC007             NUMBER(12,2),                              /*金额                          */
   PMTQC008             VARCHAR2(255),                             /*备注                          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                      */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                  */                               
   CREATE_DATE          DATE,                                      /*建立日期                      */
   MODIFIER             VARCHAR2(12),                              /*修改人员                      */
   MODI_DATE            DATE,                                      /*修改日期                      */
   FLAG                 NUMBER(1),                                 /*资料状态                      */
   constraint PK_TB_PMTQC primary key (PMTQC_ID)
);
create unique index AK_TB_PMTQC on TB_PMTQC (PMTQC001,PMTQC002,PMTQC003);
create sequence SEQ_TB_PMTQC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTQC to public;
grant index  on TB_PMTQC to public;
grant update on TB_PMTQC to public; 
grant delete on TB_PMTQC to public;  
grant insert on TB_PMTQC to public; 
grant select on SEQ_TB_PMTQC to public;   