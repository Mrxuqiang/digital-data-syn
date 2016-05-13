/*
================================================================================
表结构代码:TB_PUBQB
表结构名称:结息日表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBQB;
drop index AK_TB_PUBQB;
drop table TB_PUBQB;
create table TB_PUBQB  (
   PUBQB_ID             INTEGER                              not null,  /*结息日ID             */
   PUBQB001             VARCHAR2(4)                          not null,  /*结息日编码           */
   PUBQB002             VARCHAR2(1)                          not null,  /*结息日方式           */
   PUBQB003             NUMBER(2)                            not null,  /*结息周期             */
   PUBQB004             VARCHAR2(1)                          not null,  /*周期单位             */
   PUBQB005             NUMBER(2)                            not null,  /*期末月结息日         */
   PUBQB006             VARCHAR2(1)                          not null,  /*封存标示             */
   PUBQB007             VARCHAR2(255),                                  /*备注                 */   
   CREATE_USER          VARCHAR2(12),                                   /*建立人员             */
   USER_GROUP           VARCHAR2(12),                                   /*建立人员部门         */                               
   CREATE_DATE          DATE,                                           /*建立日期             */
   MODIFIER             VARCHAR2(12),                                   /*修改人员             */
   MODI_DATE            DATE,                                           /*修改日期             */
   FLAG                 NUMBER(1),                                      /*资料状态             */
   constraint PK_TB_PUBQB primary key (PUBQB_ID)
);
create unique index AK_TB_PUBQB on TB_PUBQB (PUBQB001);
create sequence SEQ_TB_PUBQB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBQB to public;
grant index  on TB_PUBQB to public;
grant update on TB_PUBQB to public; 
grant delete on TB_PUBQB to public;  
grant insert on TB_PUBQB to public; 
grant select on SEQ_TB_PUBQB to public;   