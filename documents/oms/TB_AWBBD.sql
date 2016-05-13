/*
================================================================================
表结构代码:TB_AWBBD
表结构名称: 平台日志表                                                                                                                       
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_AWBBD;
drop index AK_TB_AWBBD;
drop table TB_AWBBD;
create table TB_AWBBD  (
   AWBBD_ID             INTEGER                         not null,   /*日志表ID                  */
   AWBBD001             INTEGER,                                    /*会计主体ID                */
   AWBBD002             INTEGER,                                    /*核算账套ID                */
   AWBBD003             INTEGER,                                    /*模块ID                    */
   AWBBD004             INTEGER,                                    /*单别ID                    */
   AWBBD005             INTEGER ,                                   /*单据号ID                  */
   AWBBD006             VARCHAR2(30) ,                              /*单据号                    */
   AWBBD007             DATE ,                                      /*单据日期                  */
   AWBBD008             DATE,                                       /*操作时间                  */
   AWBBD009             VARCHAR2(255),                              /*错误信息                 */
   AWBBD010             INTEGER,                                    /*操作人ID                  */
   CREATE_USER          VARCHAR2(12),                               /*建立人员                   */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门               */                               
   CREATE_DATE          DATE,                                       /*建立日期                   */
   MODIFIER             VARCHAR2(12),                               /*修改人员                   */
   MODI_DATE            DATE,                                       /*修改日期                   */
   FLAG                 NUMBER(1),                                  /*资料状态                   */
   constraint PK_TB_AWBBD primary key (AWBBD_ID)
);
create sequence SEQ_TB_AWBBD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AWBBD to public;
grant index  on TB_AWBBD to public;
grant update on TB_AWBBD to public; 
grant delete on TB_AWBBD to public;  
grant insert on TB_AWBBD to public; 
grant select on SEQ_TB_AWBBD to public;   