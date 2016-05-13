/*
================================================================================
表结构代码:TB_PROAB
表结构名称:电表分配子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PROAB;
drop index AK_TB_PROAB;
drop table TB_PROAB;
create table TB_PROAB  (
   PROAB_ID             INTEGER                         not null,  /*电表分配明细ID       */
   PROAB001             INTEGER                         not null,  /*电表分配ID           */
   PROAB002             DATE                            not null,  /*分配日期             */
   PROAB003             NUMBER(12,2)                    not null,  /*电价                 */
   PROAB004             INTEGER                         not null,  /*客商ID               */
   PROAB005             INTEGER,                                   /*摊位ID               */
   PROAB006             INTEGER,                                   /*合同ID               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_PROAB primary key (PROAB_ID)
);
create unique index AK_TB_PROAB on TB_PROAB (PROAB001,PROAB002);
create sequence SEQ_TB_PROAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PROAB to public;
grant index  on TB_PROAB to public;
grant update on TB_PROAB to public; 
grant delete on TB_PROAB to public;  
grant insert on TB_PROAB to public; 
grant select on SEQ_TB_PROAB to public;   