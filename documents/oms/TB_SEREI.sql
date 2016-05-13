/*
================================================================================
表结构代码:TB_SEREI
表结构名称:赠品批次表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SEREI;
drop index AK_TB_SEREI;
drop table TB_SEREI;
create table TB_SEREI  (
   SEREI_ID             INTEGER                         not null,  /*批次ID                    */
   SEREI001             VARCHAR2(30)                    not null,  /*主批号;年月日6位+6位流水  */
   SEREI002             INTEGER                         not null,  /*部门ID                    */
   SEREI003             VARCHAR2(1)                     not null,  /*业务类型 1.入库 2.领用    */
   SEREI004             INTEGER                         not null,  /*单据ID                    */
   SEREI005             INTEGER                         not null,  /*单据明细ID                */
   SEREI006             INTEGER                         not null,  /*赠品ID                    */
   SEREI007             NUMBER(18,3),				   /*入库数量                  */
   SEREI008             NUMBER(18,3),				   /*领用数量                  */
   SEREI009             NUMBER(18,3),				   /*领入数量                  */
   SEREI010             NUMBER(18,3),				   /*发放数量                  */
   SEREI011             NUMBER(18,3),				   /*收回数量                  */
   SEREI012             NUMBER(18,3),				   /*剩余数量                  */
   SEREI013             NUMBER(12,2),				   /*批次进价                  */
   SEREI014             NUMBER(12,2),				   /*原批号                    */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                  */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门              */                               
   CREATE_DATE          DATE,                                      /*建立日期                  */
   MODIFIER             VARCHAR2(12),                              /*修改人员                  */
   MODI_DATE            DATE,                                      /*修改日期                  */
   FLAG                 NUMBER(1),                                 /*资料状态                  */
   constraint PK_TB_SEREI primary key (SEREI_ID)
);
create unique index AK_TB_SEREI on TB_SEREI (SEREI001);
create sequence SEQ_TB_SEREI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEREI to public;
grant index  on TB_SEREI to public;
grant update on TB_SEREI to public; 
grant delete on TB_SEREI to public;  
grant insert on TB_SEREI to public; 
grant select on SEQ_TB_SEREI to public;   