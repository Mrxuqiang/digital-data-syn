/*
================================================================================
表结构代码:TB_BILFB
表结构名称:促销费用分摊单促销表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILFB;
drop index AK_TB_BILFB;
drop table TB_BILFB;
create table TB_BILFB  (
   BILFB_ID             INTEGER                         not null,  /*促销费用分摊单促销ID */
   BILFB001             INTEGER                         not null,  /*促销费用分摊单ID     */
   BILFB002             VARCHAR2(1)                     not null,  /*促销类型             */
   BILFB003             INTEGER                         not null,  /*促销单ID             */
   BILFB004             VARCHAR2(30),                               /*促销单号             */
   BILFB005             VARCHAR2(255),                              /*促销描述             */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_BILFB primary key (BILFB_ID)
);
create unique index AK_TB_BILFB on TB_BILFB (BILFB001,BILFB002,BILFB003);
create sequence SEQ_TB_BILFB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILFB to public;
grant index  on TB_BILFB to public;
grant update on TB_BILFB to public; 
grant delete on TB_BILFB to public;  
grant insert on TB_BILFB to public;
grant select on SEQ_TB_BILFB to public;   