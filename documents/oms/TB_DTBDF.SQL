\/*
================================================================================
表结构代码:TB_DTBDF
表结构名称:退样入库单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DTBDF;
drop index AK_TB_DTBDF;
drop table TB_DTBDF;
create table TB_DTBDF  (
   DTBDF_ID             INTEGER                         not null,    /*退样入库单ID   */
   DTBDF001             INTEGER                          not null,   /*单别                 */
   DTBDF002            VARCHAR2(30)                 not null,        /*退样入库单号     */
   DTBDF003             INTEGER                         not null,    /*退样门店     */
   DTBDF004             INTEGER                         not null,    /*收货营运组织     */
   DTBDF005            INTEGER      ,                                /*退样发货人    */
   DTBDF006            INTEGER      ,                                /*收货人   */
   DTBDF007            INTEGER      ,                                /*录入人   */
   DTBDF008             DATE,                                        /*录入时间   */
   DTBDF009             INTEGER  ,                                   /*审核人   */
   DTBDF010             DATE,                                        /*审核时间   */
   DTBDF011             VARCHAR2(1),                               /*审核状态   */
   DTBDF012            VARCHAR2(30) ,                               /*样品变单号     */
   CREATE_USER          VARCHAR2(12),                               /*建立人员               */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门           */                               
   CREATE_DATE          DATE,                                       /*建立日期               */
   MODIFIER             VARCHAR2(12),                               /*修改人员               */
   MODI_DATE            DATE,                                       /*修改日期               */
   FLAG                 NUMBER(1),                                  /*资料状态               */
   constraint PK_TB_DTBDF primary key (DTBDF_ID)
);
create unique index AK_TB_DTBDF on TB_DTBDF (DTBDF002,DTBDF003);
create sequence SEQ_TB_DTBDF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBDF to public;
grant index  on TB_DTBDF to public;
grant update on TB_DTBDF to public; 
grant delete on TB_DTBDF to public;  
grant insert on TB_DTBDF to public; 
grant select on SEQ_TB_DTBDF to public;   
