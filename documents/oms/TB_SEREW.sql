/*
================================================================================
表结构代码:TB_SEREW
表结构名称:赠品导入单
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SEREW;
drop index AK_TB_SEREW;
drop table TB_SEREW;
create table TB_SEREW  (
   SEREW_ID             INTEGER                         not null,  /*赠品导入ID  */
   SEREW001             INTEGER                         not null,  /*导入人ID */
   SEREW002             DATE                            not null,  /*导入时间       */
   SEREW003				VARCHAR2(12)					not null,  /*导入单号  */
   SEREW004				VARCHAR2(12),							   /*赠品代码*/
   SEREW005				VARCHAR2(12),							   /*赠品名称*/
   SEREW006				INTEGER,								   /*数量*/
   SEREW007				VARCHAR2(12),							   /*销售单号*/
   SEREW008				VARCHAR2(12),								/*领用人姓名*/
   SEREW009				VARCHAR2(15),							   /*手机号*/
   SEREW010				VARCHAR2(3),								/*证件类型代码*/
   SEREW011				VARCHAR2(20),								/*证件号*/
   SEREW012				VARCHAR2(15),								/*促销单单号*/
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_SEREW primary key (SEREW_ID)
);
create unique index AK_TB_SEREW on TB_SEREW (SEREW003);
create sequence SEQ_TB_SEREW minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEREW to public;
grant index  on TB_SEREW to public;
grant update on TB_SEREW to public; 
grant delete on TB_SEREW to public;  
grant insert on TB_SEREW to public; 
grant select on SEQ_TB_SEREW to public;   