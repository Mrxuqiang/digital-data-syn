/*
================================================================================
表结构代码:TB_PUBCA
表结构名称:公司表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBCA;
drop index AK_TB_PUBCA;
drop table TB_PUBCA;
create table TB_PUBCA  (
   PUBCA_ID             INTEGER                         not null,  /*公司ID             */
   PUBCA001             VARCHAR2(16)                    not null,  /*公司代码           */
   PUBCA002             VARCHAR2(20)                    not null,  /*公司简称           */
   PUBCA003             VARCHAR2(80)                    not null,  /*公司对内全称       */
   PUBCA004             VARCHAR2(80)                    not null,  /*公司对外全称       */
   PUBCA005             INTEGER,                                   /*上级公司ID         */
   PUBCA006             VARCHAR2(255),                             /*公司LOGO           */ 
   PUBCA007             VARCHAR2(1)                     not null,  /*营运状况           */
   PUBCA008             DATE                            not null,  /*开业日期           */
   PUBCA009             DATE,                                      /*停运日期           */ 
   PUBCA010             INTEGER                         not null,  /*区域ID             */
   PUBCA011             INTEGER                         not null,  /*国家ID             */
   PUBCA012             INTEGER                         not null,  /*地区ID             */
   PUBCA013             INTEGER                         not null,  /*省别ID             */
   PUBCA014             INTEGER                         not null,  /*地市ID             */
   PUBCA015             INTEGER,                                   /*县市ID             */
   PUBCA016             VARCHAR2(10),                              /*邮政编码           */ 
   PUBCA017             VARCHAR2(255),                             /*公司地址           */
   PUBCA018             INTEGER                         not null,  /*语言ID             */
   PUBCA019             INTEGER                         not null,  /*币别ID             */
   PUBCA020             VARCHAR2(10),                              /*邮寄邮编           */
   PUBCA021             VARCHAR2(255),                             /*邮寄地址           */   
   PUBCA022             VARCHAR2(60),                              /*邮寄信箱           */
   PUBCA023             VARCHAR2(30),                              /*电话               */
   PUBCA024             VARCHAR2(30),                              /*传真               */
   PUBCA025             VARCHAR2(30),                              /*移动电话           */  
   PUBCA026             VARCHAR2(60),                              /*E_Mail             */
   PUBCA027             VARCHAR2(60),                              /*公司网址           */
   PUBCA028             VARCHAR2(20),                              /*税号               */ 
   PUBCA029             VARCHAR2(20),                              /*税籍号码           */
   PUBCA030             VARCHAR2(10)                    not null,  /*数据库代码         */
   PUBCA031             VARCHAR2(30),                              /*当前层级代码       */
   ISLASTLEV            VARCHAR2(1),                               /*是否末级           */
   LEVNUM               NUMBER(1),                                 /*层级               */
   PARCODE              VARCHAR2(40),                              /*父级代码           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBCA primary key (PUBCA_ID)
);
create unique index AK_TB_PUBCA on TB_PUBCA (PUBCA001);
create sequence SEQ_TB_PUBCA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBCA to public;
grant index  on TB_PUBCA to public;
grant update on TB_PUBCA to public; 
grant delete on TB_PUBCA to public;  
grant insert on TB_PUBCA to public; 
grant select on SEQ_TB_PUBCA to public;   