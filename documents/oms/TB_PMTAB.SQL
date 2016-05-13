/*
================================================================================
表结构代码:TB_PMTAB
表结构名称:促销价格表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTAB;
drop index AK_TB_PMTAB;
drop table TB_PMTAB;
create table TB_PMTAB  (
   PMTAB_ID             INTEGER                         not null,  /*促销价格单ID      */
   PMTAB001             INTEGER                         not null,  /*商品ID            */
   PMTAB002             INTEGER                                 ,  /*维度1ID           */
   PMTAB003             INTEGER                                 ,  /*维度2ID           */
   PMTAB004             INTEGER                                 ,  /*维度3ID           */
   PMTAB005             INTEGER                                 ,  /*维度4ID           */
   PMTAB006             INTEGER                                 ,  /*维度5ID           */
   PMTAB007             DATE                            not null,  /*促销起日          */
   PMTAB008             DATE                           not null,   /*促销止日          */
   PMTAB009             VARCHAR2(8)                             ,  /*促销时段1         */
   PMTAB010             VARCHAR2(8)                             ,  /*促销时段1         */
   PMTAB011             VARCHAR2(8)                             ,  /*促销时段2         */
   PMTAB012             VARCHAR2(8)                             ,  /*促销时段2         */
   PMTAB013             VARCHAR2(8)                             ,  /*促销时段3         */
   PMTAB014             VARCHAR2(8)                             ,  /*促销时段3         */
   PMTAB015             INTEGER                         not null,  /*单位              */
   PMTAB016             NUMBER(22,2)                    not null,  /*促销价            */
   PMTAB017             INTEGER                         not null,  /*制度促销营运组织  */
   PMTAB018             INTEGER                         not null,  /*促销单类型        */ 1.特价促销单(102)2.折扣促销单(103) 
   PMTAB019             INTEGER                         not null,  /*促销单ID          */
   PMTAB020             INTEGER                         not null,  /*促销明细ID        */
   PMTAB021             DATE                            not null,  /*审核时间          */
   PMTAB022             INTEGER,                                   /*供应商ID          */
   PMTAB023             DATE,                                      /*分摊比率          */
   PMTAB024             INTEGER                         not null,  /*生效营运组织      */   
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTAB primary key (PMTAB_ID)
);
create unique index AK_TB_PMTAB on TB_PMTAB (PMTAB002);
create sequence SEQ_TB_PMTAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTAB to public;
grant index  on TB_PMTAB to public;
grant update on TB_PMTAB to public; 
grant delete on TB_PMTAB to public;  
grant insert on TB_PMTAB to public; 
grant select on SEQ_TB_PMTAB to public;   