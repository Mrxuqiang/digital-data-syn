/*
================================================================================
表结构代码:TB_PUBHA
表结构名称:生产厂家表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBHA;
drop index AK_TB_PUBHA;
drop table TB_PUBHA;
create table TB_PUBHA  (
   PUBHA_ID             INTEGER                         not null,  /*厂家ID             */
   PUBHA001             VARCHAR2(10)                    not null,  /*厂家编码           */
   PUBHA002             VARCHAR2(30)                    not null,  /*厂家简称           */
   PUBHA003             VARCHAR2(60)                    not null,  /*厂家全称           */
   PUBHA004             VARCHAR2(10),                              /*厂家邮编           */
   PUBHA005             VARCHAR2(255),                             /*厂家地址           */
   PUBHA006             VARCHAR2(10),                              /*邮寄邮编           */
   PUBHA007             VARCHAR2(255),                             /*邮寄地址           */
   PUBHA008             VARCHAR2(30),                              /*董事长             */
   PUBHA009             VARCHAR2(30),                              /*董事长电话         */
   PUBHA010             VARCHAR2(30),                              /*总经理             */
   PUBHA011             VARCHAR2(30),                              /*总经理电话         */
   PUBHA012             VARCHAR2(30),                              /*联系人             */
   PUBHA013             VARCHAR2(30),                              /*联系人电话         */
   PUBHA014             VARCHAR2(60),                              /*联系人E_Mail       */
   PUBHA015             VARCHAR2(60),                              /*公司网址           */
   PUBHA016             INTEGER,                                   /*主营经营小类ID     */
   PUBHA017             VARCHAR2(255),                             /*备注               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBHA primary key (PUBHA_ID)
);
create unique index AK_TB_PUBHA on TB_PUBHA (PUBHA001);
create sequence SEQ_TB_PUBHA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHA to public;
grant index  on TB_PUBHA to public;
grant update on TB_PUBHA to public; 
grant delete on TB_PUBHA to public;  
grant insert on TB_PUBHA to public; 
grant select on SEQ_TB_PUBHA to public;   