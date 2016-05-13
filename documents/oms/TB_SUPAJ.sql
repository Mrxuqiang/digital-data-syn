/*
================================================================================
表结构代码:TB_SUPAJ
表结构名称:商户引入资质表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPAJ;
drop index AK_TB_SUPAJ;
drop table TB_SUPAJ;
create table TB_SUPAJ  (
   SUPAJ_ID             INTEGER                         not null,  /*登记证件ID          */
   SUPAJ001             INTEGER                         not null,  /*登记ID              */
   SUPAJ002             INTEGER                         not null,  /*证件类型ID          */
   SUPAJ003             VARCHAR2(40)                    not null,  /*证件号码            */
   SUPAJ004             VARCHAR2(30)                    not null,  /*持证人              */
   SUPAJ005             DATE,                                      /*有效期起日          */
   SUPAJ006             DATE,                                      /*有效期止日          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SUPAJ primary key (SUPAJ_ID)
);
create unique index AK_TB_SUPAJ on TB_SUPAJ (SUPAJ001,SUPAJ002,SUPAJ003);
create sequence SEQ_TB_SUPAJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAJ to public;
grant index  on TB_SUPAJ to public;
grant update on TB_SUPAJ to public; 
grant delete on TB_SUPAJ to public;  
grant insert on TB_SUPAJ to public; 
grant select on SEQ_TB_SUPAJ to public;   