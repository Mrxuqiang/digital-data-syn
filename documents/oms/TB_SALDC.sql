/*
================================================================================
表结构代码:TB_SALDC
表结构名称:退预收单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALDC;
drop index AK_TB_SALDC;
drop table TB_SALDC;
create table TB_SALDC  (
   SALDC_ID             INTEGER                         not null,  /*退预收单ID       */
   SALDC001             INTEGER                         not null,  /*单别ID           */
   SALDC002             VARCHAR2(30)                    not null,  /*退预收单号       */
   SALDC003             DATE                            not null,  /*退款日期         */
   SALDC004             INTEGER                         not null,  /*预收单ID         */
   SALDC005             INTEGER                         not null,  /*退款组织ID       */
   SALDC006             INTEGER                         not null,  /*客商ID           */
   SALDC007             VARCHAR2(255),                             /*备注             */
   SALDC008             INTEGER,                                   /*录入人ID         */
   SALDC009             DATE,                                      /*录入日期         */
   SALDC010             INTEGER,                                   /*审核人ID         */
   SALDC011             DATE,                                      /*审核日期         */
   SALDC012             VARCHAR2(1)                     not null,  /*审核状态         */
   SALDC013             VARCHAR2(1),                               /*是否签核         */
   SALDC014             VARCHAR2(30),                              /*签核单号         */
   SALDC015             VARCHAR2(1),                               /*签核码           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SALDC primary key (SALDC_ID)
);
create unique index AK_TB_SALDC on TB_SALDC (SALDC002,SALDC005);
create sequence SEQ_TB_SALDC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALDC to public;
grant index  on TB_SALDC to public;
grant update on TB_SALDC to public; 
grant delete on TB_SALDC to public;  
grant insert on TB_SALDC to public; 
grant select on SEQ_TB_SALDC to public;   