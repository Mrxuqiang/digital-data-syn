/*
================================================================================
表结构代码:TB_SERAA
表结构名称:销售凭证入库单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERAA;
drop index AK_TB_SERAA;
drop table TB_SERAA;
create table TB_SERAA  (
   SERAA_ID             INTEGER                         not null,  /*销售凭证入库单ID  */
   SERAA001             INTEGER                         not null,  /*单别ID            */
   SERAA002             VARCHAR2(30)                    not null,  /*入库单号          */
   SERAA003             DATE                            not null,  /*单据日期          */
   SERAA004             INTEGER                         not null,  /*公司ID            */
   SERAA005             INTEGER                         not null,  /*营运组织ID        */
   SERAA006             DATE                            not null,  /*购买日期          */
   SERAA007             INTEGER                         not null,  /*业务部门ID        */
   SERAA008             INTEGER                         not null,  /*业务人员ID        */
   SERAA009             VARCHAR2(255),                             /*备注              */
   SERAA010             INTEGER,                                   /*录入人ID          */
   SERAA011             DATE,                                      /*录入日期          */
   SERAA012             INTEGER,                                   /*审核人ID          */
   SERAA013             DATE,                                      /*审核日期          */
   SERAA014             VARCHAR2(1)                     not null,  /*审核状态          */
   SERAA015             VARCHAR2(1),                               /*是否签核          */
   SERAA016             VARCHAR2(30),                              /*签核单号          */
   SERAA017             VARCHAR2(1),                               /*签核码            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_SERAA primary key (SERAA_ID)
);
create unique index AK_TB_SERAA on TB_SERAA (SERAA002,SERAA005);
create sequence SEQ_TB_SERAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERAA to public;
grant index  on TB_SERAA to public;
grant update on TB_SERAA to public; 
grant delete on TB_SERAA to public;  
grant insert on TB_SERAA to public; 
grant select on SEQ_TB_SERAA to public;   