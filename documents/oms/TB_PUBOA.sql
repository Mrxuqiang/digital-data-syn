/*
================================================================================
表结构代码:TB_PUBOA
表结构名称:发票簿类型表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBOA;
drop index AK_TB_PUBOA;
drop table TB_PUBOA;
create table TB_PUBOA  (
   PUBOA_ID             INTEGER                          not null,  /*发票类型ID         */
   PUBOA001             VARCHAR2(10)                     not null,  /*发票类型编码       */
   PUBOA002             VARCHAR2(60)                     not null,  /*发票类型名称       */
   PUBOA003             NUMBER(5,4)                      not null,  /*税率               */
   PUBOA004             VARCHAR2(255),                              /*备注               */     
   CREATE_USER          VARCHAR2(12),                               /*建立人员           */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门       */                               
   CREATE_DATE          DATE,                                       /*建立日期           */
   MODIFIER             VARCHAR2(12),                               /*修改人员           */
   MODI_DATE            DATE,                                       /*修改日期           */
   FLAG                 NUMBER(1),                                  /*资料状态           */
   constraint PK_TB_PUBOA primary  key (PUBOA_ID)
);
create unique index AK_TB_PUBOA on TB_PUBOA (PUBOA001);
create sequence SEQ_TB_PUBOA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBOA to public;
grant index  on TB_PUBOA to public;
grant update on TB_PUBOA to public; 
grant delete on TB_PUBOA to public;  
grant insert on TB_PUBOA to public; 
grant select on SEQ_TB_PUBOA to public;   