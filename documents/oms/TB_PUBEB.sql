/*
================================================================================
表结构代码:TB_PUBEB
表结构名称:外汇汇率表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBEB;
drop index AK_TB_PUBEB;
drop table TB_PUBEB;
create table TB_PUBEB  (
   PUBEB_ID             INTEGER                         not null,  /*外币汇率ID     */
   PUBEB001             INTEGER                         not null,  /*源币种ID         */
   PUBEB002             INTEGER                         not null,  /*目的币种ID         */
   PUBEB003             VARCHAR2(1)                     not null,  /*折算模式       */
   PUBEB004             NUMBER(16,4),                              /*最大折算误差   */    
   PUBEB005            VARCHAR2(1)                     not null,  /*匹配模式       */
   PUBEB006             NUMBER(1),                                 /*汇率小数位数   */ 
   CREBTE_USER          VARCHAR2(12),                              /* 建立人员                   */
   USER_GROUP           VARCHAR2(12),                              /* 建立人员部门                */                               
   CREBTE_DATE          DATE,                                      /* 建立日期                    */
   MODIFIER             VARCHAR2(12),                              /* 修改人员                    */
   MODI_DATE            DATE,                                      /* 修改日期                    */
   FLAG                 NUMBER(1),                                 /* 资料状态                    */
   constraint PK_TB_PUBEB primary key (PUBEB_ID)
);
create unique index AK_TB_PUBEB on TB_PUBEB (PUBEB001,PUBEB002);
create sequence SEQ_TB_PUBEB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBEB to public;
grant index  on TB_PUBEB to public;
grant update on TB_PUBEB to public; 
grant delete on TB_PUBEB to public;  
grant insert on TB_PUBEB to public; 
grant select on SEQ_TB_PUBEB to public;   