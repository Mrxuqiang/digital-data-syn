/*
================================================================================
表结构代码:TB_DTBDD
表结构名称:出样入库单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DTBDD;
drop index AK_TB_DTBDD;
drop table TB_DTBDD;
create table TB_DTBDD  (
   DTBDD_ID             INTEGER                         not null,   /*样品入库单ID           */
   DTBDD001             INTEGER                         not null,   /*单别                   */
   DTBDD002            VARCHAR2(30)                     not null,   /*样品入库单号           */
   DTBDD003             INTEGER                         not null,   /*出样营运组织           */
   DTBDD004             INTEGER                         not null,   /*展示门店     	     */
   DTBDD005            INTEGER      ,                               /*出样发货人             */
   DTBDD006            INTEGER     ,                                /*收货人   		     */
   DTBDD007            VARCHAR2(1)     ,                            /*审核状态		     */
   DTBDD008            INTEGER     ,                                /*录入人   	             */
   DTBDD009             DATE,                                       /*录入时间               */
   DTBDD010             INTEGER     ,                               /*审核人   	             */
   DTBDD011             DATE,                                       /*审核时间               */ 
   DTBDD012            VARCHAR2(30) ,                               /*样品变单号             */
   DTBDD013             INTEGER                                 ,   /*排车单ID               */
   CREATE_USER          VARCHAR2(12),                               /*建立人员               */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门           */                               
   CREATE_DATE          DATE,                                       /*建立日期               */
   MODIFIER             VARCHAR2(12),                               /*修改人员               */
   MODI_DATE            DATE,                                       /*修改日期               */
   FLAG                 NUMBER(1),                                  /*资料状态               */
   constraint PK_TB_DTBDD primary key (DTBDD_ID)
);
create unique index AK_TB_DTBDD on TB_DTBDD (DTBDD002,DTBDD003);
create sequence SEQ_TB_DTBDD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBDD to public;
grant index  on TB_DTBDD to public;
grant update on TB_DTBDD to public; 
grant delete on TB_DTBDD to public;  
grant insert on TB_DTBDD to public; 
grant select on SEQ_TB_DTBDD to public;   