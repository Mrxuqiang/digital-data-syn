/*
================================================================================
表结构代码:TB_GRTAH
表结构名称:合并单位间持股比例表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GRTAH;
drop index AK_TB_GRTAH;
drop table TB_GRTAH;
create table TB_GRTAH  (
   GRTAH_ID             INTEGER                         not null,  /*主ID               */
   GRTAH001             INTEGER                         not null,  /*合并范围主ID       */
   GRTAH002             INTEGER                         not null,  /*投资单位ID         */
   GRTAH003             INTEGER,                                   /*被投资单位ID       */    
   GRTAH004             NUMBER(5,4),                               /*投资比例           */             
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_GRTAH primary key (GRTAH_ID)
);
create sequence SEQ_TB_GRTAH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTAH to public;
grant index  on TB_GRTAH to public;
grant update on TB_GRTAH to public; 
grant delete on TB_GRTAH to public;  
grant insert on TB_GRTAH to public; 
grant select on SEQ_TB_GRTAH to public;   