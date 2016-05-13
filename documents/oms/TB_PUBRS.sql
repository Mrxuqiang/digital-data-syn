/*
================================================================================
表结构代码:TB_PUBRS
表结构名称:期末结转主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBRS;
drop index AK_TB_PUBRS;
drop table TB_PUBRS;
create table TB_PUBRS  (
   PUBRS_ID             INTEGER                         not null,  /*期末结转主ID         */
   PUBRS001             VARCHAR2(4)                     not null,  /*编码                 */
   PUBRS002             VARCHAR2(30)                     not null,  /*转账说明             */
   PUBRS003             INTEGER                         not null,  /*凭证类别ID             */
   PUBRS004             VARCHAR2(1)                     not null,  /*转账时间             */
   PUBRS005             INTEGER ,                                 /*转帐频度             */
   PUBRS006             INTEGER,                                  /*定义人ID              */
   PUBRS007             INTEGER                         not null,  /*结转分类ID             */
   PUBRS008             NUMBER(2),                                 /*执行总次数           */
   PUBRS009             VARCHAR2(6),                               /*上次执行时间         */
   PUBRS010             NUMBER(2),                                 /*已执行次数           */ 
   PUBRS011             INTEGER,                                   /*核算账套ID             */
   PUBRS012             INTEGER,                                   /*会计主体ID             */
   PUBRS013             INTEGER,                                   /*公司ID             */ 
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_PUBRS primary key (PUBRS_ID)
);
create unique index AK_TB_PUBRS on TB_PUBRS (PUBRS001,PUBRS002);
create sequence SEQ_TB_PUBRS minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRS to public;
grant index  on TB_PUBRS to public;
grant update on TB_PUBRS to public; 
grant delete on TB_PUBRS to public;  
grant insert on TB_PUBRS to public; 
grant select on SEQ_TB_PUBRS to public;   