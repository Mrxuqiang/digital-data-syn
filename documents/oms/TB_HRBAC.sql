/*
================================================================================
表结构代码:TB_HRBAC
表结构名称:税率级次表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_HRBAC;
drop index AK_TB_HRBAC;
drop table TB_HRBAC;
create table TB_HRBAC  (
   HRBAC_ID             INTEGER                         not null,  /*税率级次ID         */
   HRBAC001             INTEGER                         not null,  /*所得税率ID         */
   HRBAC002             INTEGER                         not null,  /*级次               */
   HRBAC003             NUMBER(12,2)                    not null,  /*本级税最低额       */
   HRBAC004             NUMBER(12,2)                    not null,  /*本级税最高额       */
   HRBAC005             NUMBER(5,4)                     not null,  /*税率               */
   HRBAC006             NUMBER(12,2)                    not null,  /*速算扣除数         */
   HRBAC007             VARCHAR2(255)                   not null,  /*备注               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_HRBAC primary key (HRBAC_ID)
);
create unique index AK_TB_HRAAC on TB_HRBAC (HRBAC001);
create sequence SEQ_TB_HRBAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_HRBAC to public;
grant index  on TB_HRBAC to public;
grant update on TB_HRBAC to public; 
grant delete on TB_HRBAC to public;  
grant insert on TB_HRBAC to public; 
grant select on SEQ_TB_HRBAC to public;   