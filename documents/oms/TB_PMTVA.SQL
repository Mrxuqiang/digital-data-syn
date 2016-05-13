/*
================================================================================
表结构代码:TB_PMTVA
表结构名称:满减促销单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTVA;
drop index AK_TB_PMTVA;
drop table TB_PMTVA;
create table TB_PMTVA  (
   PMTVA_ID             INTEGER                         not null,  /*满减促销单主表      */
   PMTVA001             INTEGER                         not null,  /*单别ID            */
   PMTVA002             VARCHAR2(30)                	  not null,  /*促销单号          */
   PMTVA003             DATE                            not null,  /*单据日期          */
   PMTVA004             INTEGER                         not null,  /*负责营运组织      */
   PMTVA005             INTEGER                         not null,  /*负责部门ID        */
   PMTVA006             INTEGER                         not null,  /*负责人员ID        */
   PMTVA007             INTEGER                         not null,  /*促销主题ID        */
   PMTVA008             VARCHAR2(255),                             /*促销描述          */
   PMTVA009             DATE                            not null,  /*促销起日*/
   PMTVA010             DATE                            not null,  /*促销止日*/
   PMTVA011             VARCHAR2(8)                            ,   /*促销时段1*/
   PMTVA012             VARCHAR2(8)                            ,   /*促销时段1*/
   PMTVA013            VARCHAR2(8)                             ,   /*促销时段2*/
   PMTVA014            VARCHAR2(8)                              ,  /*促销时段2*/
   PMTVA015            VARCHAR2(8)                              ,  /*促销时段3*/
   PMTVA016             VARCHAR2(8)                              , /*促销时段3*/
   PMTVA017             VARCHAR2(1),                               /*多张销售单是否允许参与促销          */
   PMTVA018             INTEGER,                                   /*录入人ID          */
   PMTVA019             DATE,                                      /*录入日期          */
   PMTVA020             INTEGER,                                   /*审核人ID          */
   PMTVA021             DATE,                                      /*审核日期          */
   PMTVA022             VARCHAR2(1)                     not null,  /*审核状态   */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTVA primary key (PMTVA_ID)
);
create unique index AK_TB_PMTVA on TB_PMTVA (PMTVA002,PMTVA004);
create sequence SEQ_TB_PMTVA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTVA to public;
grant index  on TB_PMTVA to public;
grant update on TB_PMTVA to public; 
grant delete on TB_PMTVA to public;  
grant insert on TB_PMTVA to public; 
grant select on SEQ_TB_PMTVA to public;   