/*
================================================================================
表结构代码:TB_OTSAA
表结构名称:营运组织对照表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_OTSAA;
drop index AK_TB_OTSAA;
drop table TB_OTSAA;
create table TB_OTSAA  (
   OTSAA_ID             INTEGER                         not null,  /*对照表ID             */
   OTSAA001             INTEGER                         not null,  /*营运组织ID           */
   OTSAA002             VARCHAR2(30)                    not null,  /*SAP商场编码           */
   OTSAA003             VARCHAR2(60)                    not null,  /*SAP商场名称           */   
   OTSAA004             VARCHAR2(255) ,                            /*备注             */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                 /*资料状态           */
   constraint PK_TB_OTSAA primary key (OTSAA_ID)
);
create unique index AK_TB_OTSAA on TB_OTSAA (OTSAA001,OTSAA002,FLAG);
create sequence SEQ_TB_OTSAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTSAA to public;
grant index  on TB_OTSAA to public;
grant update on TB_OTSAA to public; 
grant delete on TB_OTSAA to public;  
grant insert on TB_OTSAA to public; 
grant select on SEQ_TB_OTSAA to public;   