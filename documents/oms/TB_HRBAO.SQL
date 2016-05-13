/*
================================================================================
表结构代码:TB_HRBAO
表结构名称:员工发薪月档单身
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_HRBAO;
drop index AK_TB_HRBAO;
drop table TB_HRBAO;
create table TB_HRBAO  (
   HRBAO_ID             INTEGER                         not null,  /*员工薪资月档单身表ID */
   HRBAO001             INTEGER                         not null,  /*员工薪资月档单头表ID */
   HRBAO002             INTEGER                         not null,  /*员工ID             */
   HRBAO003             INTEGER                         not null,  /*薪资组ID           */   
   HRBAO004             INTEGER                         not null,  /*起征点ID           */
   HRBAO005             NUMBER(12,2)                    not null,  /*税前金额           */ 
   HRBAO006             NUMBER(12,2)                    not null,  /*计税金额           */
   HRBAO007             NUMBER(12,2)                    not null,  /*税率               */  
   HRBAO008             NUMBER(12,2)                    not null,  /*税额               */
   HRBAO009             NUMBER(12,2)                    not null,  /*速算扣除数         */        
   HRBAO010             NUMBER(12,2)                    not null,  /*实发总额           */
   HRBAO011             VARCHAR2(255)                   not null,  /*备注               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_HRBAO primary key (HRBAO_ID)
);
create unique index AK_TB_HRBAO on TB_HRBAO (HRBAO001);
create sequence SEQ_TB_HRBAO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_HRBAO to public;
grant index  on TB_HRBAO to public;
grant update on TB_HRBAO to public; 
grant delete on TB_HRBAO to public;  
grant insert on TB_HRBAO to public; 
grant select on SEQ_TB_HRBAO to public;   