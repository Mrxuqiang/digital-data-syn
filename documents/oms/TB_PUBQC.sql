/*
================================================================================
表结构代码:TB_PUBQC
表结构名称:筹投资方式表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBQC;
drop index AK_TB_PUBQC;
drop table TB_PUBQC;
create table TB_PUBQC  (
   PUBQC_ID             INTEGER                              not null,  /*筹投资方式ID       */
   PUBQC001             VARCHAR2(4)                          not null,  /*方式编码           */
   PUBQC002             VARCHAR2(60)                         not null,  /*方式名称           */
   PUBQC003             VARCHAR2(1)                          not null,  /*筹投资类型         */
   PUBQC004             VARCHAR2(1)                          not null,  /*管理类型           */
   PUBQC006             VARCHAR2(1)                          not null,  /*封存标示           */
   PUBQC007             VARCHAR2(255),                                  /*备注               */   
   CREATE_USER          VARCHAR2(12),                                   /*建立人员           */
   USER_GROUP           VARCHAR2(12),                                   /*建立人员部门       */                               
   CREATE_DATE          DATE,                                           /*建立日期           */
   MODIFIER             VARCHAR2(12),                                   /*修改人员           */
   MODI_DATE            DATE,                                           /*修改日期           */
   FLAG                 NUMBER(1),                                      /*资料状态           */
   constraint PK_TB_PUBQC primary key (PUBQC_ID)
);
create unique index AK_TB_PUBQC on TB_PUBQC (PUBQC001);
create sequence SEQ_TB_PUBQC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBQC to public;
grant index  on TB_PUBQC to public;
grant update on TB_PUBQC to public; 
grant delete on TB_PUBQC to public;  
grant insert on TB_PUBQC to public; 
grant select on SEQ_TB_PUBQC to public;   