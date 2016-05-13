/*
================================================================================
表结构代码:TB_PMTHI
表结构名称:满赠促销单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTHI;
drop index AK_TB_PMTHI;
drop table TB_PMTHI;
create table TB_PMTHI  (
   PMTHI_ID             INTEGER                         not null,  /*满赠促销单ID      */
   PMTHI001             INTEGER                         not null,  /*单别ID            */
   PMTHI002             VARCHAR2(30)                	  not null,  /*促销单号          */
   PMTHI003             DATE                            not null,  /*单据日期          */
   PMTHI004             INTEGER                         not null,  /*负责营运组织      */
   PMTHI005             INTEGER                         not null,  /*负责部门ID        */
   PMTHI006             INTEGER                         not null,  /*负责人员ID        */
   PMTHI007             INTEGER                         not null,  /*促销主题ID        */
   PMTHI008             VARCHAR2(255),                             /*促销描述          */
   PMTHI009             DATE                            not null,  /*促销起日*/
   PMTHI010             DATE                            not null,  /*促销止日*/
   PMTHI011             VARCHAR2(8)                            ,   /*促销时段1*/
   PMTHI012             VARCHAR2(8)                            ,   /*促销时段1*/
   PMTHI013            VARCHAR2(8)                             ,   /*促销时段2*/
   PMTHI014            VARCHAR2(8)                              ,  /*促销时段2*/
   PMTHI015            VARCHAR2(8)                              ,  /*促销时段3*/
   PMTHI016             VARCHAR2(8)                              , /*促销时段3*/
   PMTHI017             VARCHAR2(1),                               /*送赠方式          */
   PMTHI018             VARCHAR2(1),                               /*多张销售单是否允许参与促销          */
   PMTHI019             INTEGER,                                   /*录入人ID          */
   PMTHI020             DATE,                                      /*录入日期          */
   PMTHI021             INTEGER,                                   /*审核人ID          */
   PMTHI022             DATE,                                      /*审核日期          */
   PMTHI023             VARCHAR2(1)                     not null,  /*审核状态   */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTHI primary key (PMTHI_ID)
);
create unique index AK_TB_PMTHI on TB_PMTHI (PMTHI002,PMTHI004);
create sequence SEQ_TB_PMTHI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTHI to public;
grant index  on TB_PMTHI to public;
grant update on TB_PMTHI to public; 
grant delete on TB_PMTHI to public;  
grant insert on TB_PMTHI to public; 
grant select on SEQ_TB_PMTHI to public;   