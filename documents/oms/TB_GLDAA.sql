/*
================================================================================
表结构代码:TB_GLDAA
表结构名称:期初余额表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GLDAA;
drop index AK_TB_GLDAA;
drop table TB_GLDAA;
create table TB_GLDAA  (
   GLDAA_ID             INTEGER                         not null,   /*期初余额ID        */
   GLDAA001             INTEGER                         not null,   /*主体帐簿         */
   GLDAA002             INTEGER                         not null,   /*核算方式         */
   GLDAA003             VARCHAR2(4)                     not null,   /*会计年度         */
   GLDAA004             VARCHAR2(2)                     not null,   /*会计期间         */
   GLDAA005             INTEGER                         not null,   /*币种ID             */
   GLDAA006             NUMBER(5,4),                                /*汇率1            */
   GLDAA007             NUMBER(5,4),                                /*汇率2            */
   GLDAA008             INTEGER                         not null,   /*科目ID        */
   GLDAA009             VARCHAR2(1),                                /*预留字段        */
   GLDAA010             VARCHAR2(4)                     not null,   /*方向           */
   GLDAA011             INTEGER,                                    /*计量单位ID       */
   GLDAA012             VARCHAR2(20) ,                              /*核算项目标识   */
   GLDAA013             NUMBER(16,2),                               /*数量           */
   GLDAA014             NUMBER(16,2),                               /*原币           */
   GLDAA015             NUMBER(16,2),                               /*本币           */
   GLDAA016             NUMBER(16,2) ,                              /*辅币           */
   GLDAA017             INTEGER                         not null,   /*公司编码ID       */
   GLDAA018             INTEGER                         not null,   /*会计主体ID       */
   CREATE_USER          VARCHAR2(12),                               /*建立人员               */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门           */                               
   CREATE_DATE          DATE,                                       /*建立日期               */
   MODIFIER             VARCHAR2(12),                               /*修改人员               */
   MODI_DATE            DATE,                                       /*修改日期               */
   FLAG                 NUMBER(1),                                  /*资料状态               */
   constraint PK_TB_GLDAA primary key (GLDAA_ID)
);
create unique index AK_TB_GLDAA on TB_GLDAA (GLDAA008,GLDAA012);
create sequence SEQ_TB_GLDAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GLDAA to public;
grant index  on TB_GLDAA to public;
grant update on TB_GLDAA to public; 
grant delete on TB_GLDAA to public;  
grant insert on TB_GLDAA to public; 
grant select on SEQ_TB_GLDAA to public;   