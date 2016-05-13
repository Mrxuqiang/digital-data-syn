/*
================================================================================
表结构代码:TB_AGEAD
表结构名称:代收款返款单费用表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_AGEAD;
drop index AK_TB_AGEAD;
drop table TB_AGEAD;
create table TB_AGEAD  (
   AGEAD_ID             INTEGER                         not null,  /*代收款返款单费用ID          */
   AGEAD001             INTEGER                         not null,  /*代收款返款单ID              */
   AGEAD002             INTEGER                         not null,  /*费用单ID                    */
   AGEAD003             INTEGER                         not null,  /*费用明细ID                  */
   AGEAD004             INTEGER,                                   /*费用ID                      */
   AGEAD005             NUMBER(12,2),                              /*未收金额                    */
   AGEAD006             NUMBER(12,2),                              /*收款金额                    */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_AGEAD primary key (AGEAD_ID)
);
create unique index AK_TB_AGEAD on TB_AGEAD (AGEAD001,AGEAD002,AGEAD003);
create sequence SEQ_TB_AGEAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AGEAD to public;
grant index  on TB_AGEAD to public;
grant update on TB_AGEAD to public; 
grant delete on TB_AGEAD to public;  
grant insert on TB_AGEAD to public; 
grant select on SEQ_TB_AGEAD to public;   