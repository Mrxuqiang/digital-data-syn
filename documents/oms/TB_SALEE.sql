/*
================================================================================
表结构代码:TB_SALEE
表结构名称:日结摊位收券表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALEE;
drop index AK_TB_SALEE;
drop table TB_SALEE;
create table TB_SALEE  (
   SALEE_ID             INTEGER                         not null,  /*日结摊位交款ID        */
   SALEE001             INTEGER                         not null,  /*营运组织ID            */
   SALEE002             DATE                            not null,  /*销售日期              */
   SALEE003             VARCHAR2(1)                     not null,  /*交易类型              */
   SALEE004             INTEGER                         not null,  /*合同号ID              */
   SALEE005             INTEGER                         not null,  /*券种ID                */
   SALEE006             NUMBER(12,2)                    not null,  /*交款金额              */
   SALEE007             NUMBER(12,2)                    not null,  /*溢收金额              */
   SALEE008             INTEGER                         not null,  /*摊位ID                */
   SALEE009             INTEGER                         not null,  /*主品牌ID              */
   SALEE010             INTEGER                         not null,  /*商户ID                */
   SALEE011             INTEGER                         not null,  /*楼栋ID                */
   SALEE012             INTEGER                         not null,  /*楼层ID                */
   SALEE013             INTEGER                         not null,  /*经营大类ID            */
   SALEE014             INTEGER                         not null,  /*经营中类ID            */
   SALEE015             INTEGER                         not null,  /*经营小类ID            */
   SALEE016             VARCHAR2(30),                              /*参考单号一            */
   SALEE017             VARCHAR2(30),                              /*参考单号二            */
   SALEE018             VARCHAR2(30),                              /*参考单号三            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员              */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门          */
   CREATE_DATE          DATE,                                      /*建立日期              */
   MODIFIER             VARCHAR2(12),                              /*修改人员              */
   MODI_DATE            DATE,                                      /*修改日期              */
   FLAG                 NUMBER(1),                                 /*资料状态              */
   constraint PK_TB_SALEE primary key (SALEE_ID)
);
create unique index AK_TB_SALEE on TB_SALEE (SALEE001,SALEE002,SALEE003,SALEE004,SALEE005);
create sequence SEQ_TB_SALEE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALEE to public;
grant index  on TB_SALEE to public;
grant update on TB_SALEE to public; 
grant delete on TB_SALEE to public;  
grant insert on TB_SALEE to public; 
grant select on SEQ_TB_SALEE to public;   