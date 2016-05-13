/*
================================================================================
表结构代码:TB_PUBSA
表结构名称:影响因素列表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBSA;
drop index AK_TB_PUBSA;
drop table TB_PUBSA;
create table TB_PUBSA  (
   PUBSA_ID             INTEGER                         not null,  /*影响因素列表ID     */
   PUBSA001             VARCHAR2(4)                     not null,  /*因素编号       */
   PUBSA002             VARCHAR2(30)                    not null,  /*因素名称       */
   PUBSA003             INTEGER                         not null,  /*模块ID             */
   PUBSA004             INTEGER,                                   /*表结构ID            */
   PUBSA005             INTEGER,                                   /*保存字段ID          */
   PUBSA006             INTEGER,                                   /*视窗ID              */
   PUBSA007             INTEGER,                                   /*显示字段ID          */
   PUBSA008             INTEGER,                                   /*名称字段ID           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_PUBSA primary key (PUBSA_ID)
);
create unique index AK_TB_PUBSA on TB_PUBSA (PUBSA001);
create sequence SEQ_TB_PUBSA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBSA to public;
grant index  on TB_PUBSA to public;
grant update on TB_PUBSA to public; 
grant delete on TB_PUBSA to public;  
grant insert on TB_PUBSA to public; 
grant select on SEQ_TB_PUBSA to public;   