/*
================================================================================
表结构代码:TB_PMTGI
表结构名称:累计送券促销单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTGI;
drop index AK_TB_PMTGI;
drop table TB_PMTGI;
create table TB_PMTGI  (
   PMTGI_ID             INTEGER                         not null,  /*累计送券促销单ID      */
   PMTGI001             INTEGER                         not null,  /*单别ID            */
   PMTGI002             VARCHAR2(30)                	  not null, /*促销单号          */
   PMTGI003             DATE                            not null,  /*单据日期          */
   PMTGI004             INTEGER                         not null,  /*负责营运组织      */
   PMTGI005             INTEGER                         not null,  /*负责部门ID        */
   PMTGI006             INTEGER                         not null,  /*负责人员ID        */
   PMTGI007             INTEGER                         not null,  /*促销主题ID        */
   PMTGI008             VARCHAR2(255),                             /*促销描述          */
   PMTGI009             DATE                            not null,  /*促销起日       */
   PMTGI010             DATE                            not null,  /*促销止日       */
   PMTGI011             VARCHAR2(8)                            ,   /*促销时段1      */
   PMTGI012             VARCHAR2(8)                            ,   /*促销时段1      */
   PMTGI013            VARCHAR2(8)                             ,   /*促销时段2      */
   PMTGI014            VARCHAR2(8)                              ,  /*促销时段2      */
   PMTGI015            VARCHAR2(8)                              ,  /*促销时段3      */
   PMTGI016             VARCHAR2(8)                              , /*促销时段3      */
   PMTGI017             INTEGER,                                   /*录入人ID          */
   PMTGI018             DATE,                                      /*录入日期          */
   PMTGI019             INTEGER,                                   /*审核人ID          */
   PMTGI020             DATE,                                      /*审核日期          */
   PMTGI021             VARCHAR2(1)                     not null,  /*审核状态        */
   PMTGI022             VARCHAR2(1)                     not null,  /*是否允许多张销售单参与促销  */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTGI primary key (PMTGI_ID)
);
create unique index AK_TB_PMTGI on TB_PMTGI (PMTGI002,PMTGI004);
create sequence SEQ_TB_PMTGI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTGI to public;
grant index  on TB_PMTGI to public;
grant update on TB_PMTGI to public; 
grant delete on TB_PMTGI to public;  
grant insert on TB_PMTGI to public; 
grant select on SEQ_TB_PMTGI to public;   