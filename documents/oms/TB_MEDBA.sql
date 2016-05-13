/*
================================================================================
表结构代码:TB_MEDBA
表结构名称:媒体定义表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_MEDBA;
drop index AK_TB_MEDBA;
drop table TB_MEDBA;
create table TB_MEDBA  (
   MEDBA_ID             INTEGER                         not null,  /*媒体ID             */
   MEDBA001             VARCHAR2(16)                    not null,  /*媒体编号           */
   MEDBA002             VARCHAR2(20)                    not null,  /*媒体名称           */
   MEDBA003             INTEGER                         not null,  /*媒体分类ID         */
   MEDBA004             INTEGER                         not null,  /*媒体级别ID         */
   MEDBA005             INTEGER,				   /*区域ID             */
   MEDBA006             INTEGER,				   /*国家ID             */
   MEDBA007             INTEGER,				   /*地区ID             */
   MEDBA008             INTEGER,				   /*省别ID             */
   MEDBA009             INTEGER,				   /*地市ID             */
   MEDBA010             INTEGER,                                   /*县市ID             */
   MEDBA011             NUMBER(12),                                /*收视人员           */
   MEDBA012             VARCHAR2(100),                             /*收视范围           */
   MEDBA013             VARCHAR2(10),                              /*邮编               */ 
   MEDBA014             VARCHAR2(255),                             /*地址               */
   MEDBA015             VARCHAR2(10),                              /*联系人             */
   MEDBA016             VARCHAR2(30),                              /*电话               */
   MEDBA017             VARCHAR2(30),                              /*传真               */
   MEDBA018             VARCHAR2(30),                              /*移动电话           */  
   MEDBA019             VARCHAR2(60),                              /*E_Mail             */
   MEDBA020             VARCHAR2(20),                              /*税号               */ 
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_MEDBA primary key (MEDBA_ID)
);
create unique index AK_TB_MEDBA on TB_MEDBA (MEDBA001);
create sequence SEQ_TB_MEDBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEDBA to public;
grant index  on TB_MEDBA to public;
grant update on TB_MEDBA to public; 
grant delete on TB_MEDBA to public;  
grant insert on TB_MEDBA to public; 
grant select on SEQ_TB_MEDBA to public;   