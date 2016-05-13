/*
================================================================================
表结构代码:TB_SMSAD
表结构名称:短信发送对象定义表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_SMSAD;
drop index AK_TB_SMSAD;
drop table TB_SMSAD;
create table TB_SMSAD  (
   SMSAD_ID            INTEGER,                not null,            /*短信发送对象定义ID  */        
   SMSAD001            INTEGER,                not null,            /*合同ID              */    
   SMSAD002            INTEGER,                                     /*编号                */ 
   SMSAD003            VARCHAR2(12),                                /*中文名              */ 
   SMSAD004            VARCHAR2(6),                                 /*性别                */ 
   SMSAD005            NUMBER（11,0）,                              /*手机号              */ 
   SMSAD006            VARCHAR2(6),                                 /*角色                */ 
   CREATE_USER         VARCHAR2(12),                                /*建立人员            */
   USER_GROUP          VARCHAR2(30),                                /*建立人员部门        */                             
   CREATE_DATE         DATE,                                        /*建立日期            */
   MODIFIER            VARCHAR2(12),                                /*修改人员            */
   MODI_DATE           DATE,                                        /*修改日期            */
   FLAG                NUMBER,                                      /*资料状态            */
   constraint PK_TB_SMSAD primary key (SMSAD_ID)
);
create unique index AK_TB_SMSAD on TB_SMSAD (SMSAD001,SMSAD005);
create sequence SEQ_TB_SMSAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SMSAD to public;
grant index  on TB_SMSAD to public;
grant update on TB_SMSAD to public; 
grant delete on TB_SMSAD to public;  
grant insert on TB_SMSAD to public; 
grant select on SEQ_TB_SMSAD to public;   