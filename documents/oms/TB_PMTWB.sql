/*
================================================================================
表结构代码:TB_PMTWB
表结构名称:拼单折扣单套餐表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTWB;
drop index AK_TB_PMTWB;
drop table TB_PMTWB;
create table TB_PMTWB  (
   PMTWB_ID             INTEGER                         not null,  /*拼单折扣套餐ID*/
   PMTWB001             INTEGER                         not null,  /*拼单折扣单ID      */
   PMTWB002             VARCHAR2(30)                     		,  /*套餐代码          */
   PMTWB003             VARCHAR2(50)                   		 	,  /*套餐名称          */
   PMTWB004             VARCHAR2(255)                 			,  /*套餐描述          */
   PMTWB005             INTEGER                     			,  /*商户ID          */
   PMTWB006             INTEGER                     			,  /*商品ID          */
   PMTWB007             INTEGER                     			,  /*拼单笔数          */
   PMTWB008             number(12,2),                   		   /*折扣比例(%)*/
   PMTWB009             VARCHAR2(1),                     		   /*是否为套餐 0， 1*/
   PMTWB010				VARCHAR2(30),                  			   /*分组标识*/
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTWB primary key (PMTWB_ID)
);
create unique index AK_TB_PMTWB on TB_PMTWB (PMTWB001,PMTWB002,PMTWB003);
create sequence SEQ_TB_PMTWB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTWB to public;
grant index  on TB_PMTWB to public;
grant update on TB_PMTWB to public; 
grant delete on TB_PMTWB to public;  
grant insert on TB_PMTWB to public; 
grant select on SEQ_TB_PMTWB to public;   