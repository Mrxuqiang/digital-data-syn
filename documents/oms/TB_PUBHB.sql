/*
================================================================================
表结构代码:TB_PUBHB
表结构名称:品牌表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBHB;
drop index AK_TB_PUBHB;
drop table TB_PUBHB;
create table TB_PUBHB  (
   PUBHB_ID             INTEGER                         not null,  /*品牌ID             */
   PUBHB001             VARCHAR2(10)                    not null,  /*品牌代码           */
   PUBHB002             VARCHAR2(30)                    not null,  /*品牌名称           */
   PUBHB003             VARCHAR2(80),                              /*品牌描述           */
   PUBHB004             INTEGER,                                   /*所属父品牌         */
   PUBHB005             VARCHAR2(1),                               /*是否停用           */
   PUBHB006             INTEGER,                                   /*所属厂家ID         */
   PUBHB007             VARCHAR2(1),                               /*是否内部品牌       */
   PUBHB008             INTEGER,                                   /*品牌等级ID         */
   PUBHB009             VARCHAR2(255),                             /*图片               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBHB primary key (PUBHB_ID)
);
create unique index AK_TB_PUBHB on TB_PUBHB (PUBHB001);
create sequence SEQ_TB_PUBHB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHB to public;
grant index  on TB_PUBHB to public;
grant update on TB_PUBHB to public; 
grant delete on TB_PUBHB to public;  
grant insert on TB_PUBHB to public; 
grant select on SEQ_TB_PUBHB to public;   