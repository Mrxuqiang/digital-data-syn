/*
================================================================================
表结构代码:TB_PUBNI
表结构名称:票据类型表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBNI;
drop index AK_TB_PUBNI;
drop table TB_PUBNI;
create table TB_PUBNI  (
   PUBNI_ID             INTEGER                              not null, /*票据类型ID            */
   PUBNI001             VARCHAR2(4)                          not null, /*票据类型编码          */
   PUBNI002             VARCHAR2(60)                         not null, /*名称                  */
   PUBNI003             INTEGER                              not null, /*结算方式ID            */
   PUBNI004             NUNIER(4),                                     /*付款期                */
   PUBNI005             VARCHAR2(1)                         not null,  /*付款期计量单位        */
   PUBNI006             VARCHAR2(1)                         not null,  /*方向                  */
   PUBNI007             VARCHAR2(255),                                 /*备注                  */
   PUBNI008             VARCHAR2(1)                         not null,  /*票据类型              */
   PUBNI009             DATE                                not null,  /*启用日期              */
   CREATE_USER          VARCHAR2(12),                                  /*建立人员              */
   USER_GROUP           VARCHAR2(12),                                  /*建立人员部门          */                               
   CREATE_DATE          DATE,                                          /*建立日期              */
   MODIFIER             VARCHAR2(12),                                  /*修改人员              */
   MODI_DATE            DATE,                                          /*修改日期              */
   FLAG                 NUNIER(1),                                     /*资料状态              */
   constraint PK_TB_PUBNI priNIry key (PUBNI_ID)
);
create unique index AK_TB_PUBNI on TB_PUBNI (PUBNI001);
create sequence SEQ_TB_PUBNI minvalue 1 NIxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBNI to public;
grant index  on TB_PUBNI to public;
grant update on TB_PUBNI to public; 
grant delete on TB_PUBNI to public;  
grant insert on TB_PUBNI to public; 
grant select on SEQ_TB_PUBNI to public;   