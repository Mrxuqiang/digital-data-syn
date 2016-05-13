/*
================================================================================
表结构代码:TB_BILBB
表结构名称:支出单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILBB;
drop index AK_TB_BILBB;
drop table TB_BILBB;
create table TB_BILBB  (
   BILBB_ID             INTEGER                         not null,  /*支出单明细ID         */
   BILBB001             INTEGER                         not null,  /*支出单ID             */
   BILBB002             INTEGER,                                   /*预收单ID             */
   BILBB003             INTEGER                         not null,  /*费用ID               */
   BILBB004             VARCHAR2(1)                     not null,  /*帐款类型             */
   BILBB005             INTEGER,                                   /*会计科目ID           */
   BILBB006             NUMBER(12,2)                    not null,  /*支出金额             */
   BILBB007             NUMBER(12,2)                    not null,  /*已付金额             */
   BILBB008             VARCHAR2(255),                             /*备注                 */
   BILBB009             DATE,                                      /*费用起日             */
   BILBB010             DATE,                                      /*费用止日             */
   BILBB011             INTEGER,                                   /*来源营运组织         */
   BILBB012             VARCHAR2(30),                              /*预收单号             */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_BILBB primary key (BILBB_ID)
);
create unique index AK_TB_BILBB on TB_BILBB (BILBB_ID,BILBB001,BILBB002,BILBB003);
create sequence SEQ_TB_BILBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILBB to public;
grant index  on TB_BILBB to public;
grant update on TB_BILBB to public; 
grant delete on TB_BILBB to public;  
grant insert on TB_BILBB to public; 
grant select on SEQ_TB_BILBB to public;   