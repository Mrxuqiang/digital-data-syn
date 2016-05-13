/*
================================================================================
表结构代码:TB_PUBBQ
表结构名称:品牌提成率对照主表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_PUBBQ;
drop index AK_TB_PUBBQ;
drop table TB_PUBBQ;
create table TB_PUBBQ  (
   PUBBQ_ID             INTEGER                         not null,  /*品牌提成率主ID        */
   PUBBQ001             INTEGER                         not null,  /*品牌ID                */
   PUBBQ002             DATE,                                      /*单据日期              */   
   PUBBQ003             DATE,                                      /*生效日期              */
   PUBBQ004             DATE ,                                     /*失效日期              */
   PUBBQ005             VARCHAR2(255),                             /*备注                  */   
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                 /*资料状态           */
   constraint PK_TB_PUBBQ primary key (PUBBQ_ID)
);
create unique index AK_TB_PUBBQ on TB_PUBBQ (PUBBQ001,PUBBQ003,FLAG);
create sequence SEQ_TB_PUBBQ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBQ to public;
grant index  on TB_PUBBQ to public;
grant update on TB_PUBBQ to public; 
grant delete on TB_PUBBQ to public;  
grant insert on TB_PUBBQ to public; 
grant select on SEQ_TB_PUBBQ to public;   