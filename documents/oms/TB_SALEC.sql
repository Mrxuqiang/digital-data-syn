/*
================================================================================
表结构代码:TB_SALEC
表结构名称:日结摊位交款表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALEC;
drop index AK_TB_SALEC;
drop table TB_SALEC;
create table TB_SALEC  (
   SALEC_ID             INTEGER                         not null,  /*日结摊位交款ID        */
   SALEC001             INTEGER                         not null,  /*营运组织ID            */
   SALEC002             DATE                            not null,  /*销售日期              */
   SALEC003             VARCHAR2(1)                     not null,  /*交易类型              */
   SALEC004             INTEGER                         not null,  /*合同号ID              */
   SALEC005             INTEGER                         not null,  /*结算ID                */
   SALEC006             NUMBER(12,2)                    not null,  /*交款金额              */
   SALEC007             NUMBER(12,2),                              /*手续费金额            */
   SALEC008             NUMBER(12,2),                              /*溢收金额              */
   SALEC009             INTEGER                         not null,  /*摊位ID                */
   SALEC010             INTEGER                         not null,  /*主品牌ID              */
   SALEC011             INTEGER                         not null,  /*商户ID                */
   SALEC012             INTEGER                         not null,  /*楼栋ID                */
   SALEC013             INTEGER                         not null,  /*楼层ID                */
   SALEC014             INTEGER                         not null,  /*经营大类ID            */
   SALEC015             INTEGER                         not null,  /*经营中类ID            */
   SALEC016             INTEGER                         not null,  /*经营小类ID            */
   SALEC017             VARCHAR2(30),                              /*参考单号一            */
   SALEC018             VARCHAR2(30),                              /*参考单号二            */
   SALEC019             VARCHAR2(30),                              /*参考单号三            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员              */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门          */
   CREATE_DATE          DATE,                                      /*建立日期              */
   MODIFIER             VARCHAR2(12),                              /*修改人员              */
   MODI_DATE            DATE,                                      /*修改日期              */
   FLAG                 NUMBER(1),                                 /*资料状态              */
   constraint PK_TB_SALEC primary key (SALEC_ID)
);
create unique index AK_TB_SALEC on TB_SALEC (SALEC001,SALEC002,SALEC003,SALEC004,SALEC005);
create sequence SEQ_TB_SALEC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALEC to public;
grant index  on TB_SALEC to public;
grant update on TB_SALEC to public; 
grant delete on TB_SALEC to public;  
grant insert on TB_SALEC to public; 
grant select on SEQ_TB_SALEC to public;   