/*
================================================================================
表结构代码:TB_PMTOD
表结构名称:活动赠品发放单赠品表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTOD;
drop index AK_TB_PMTOD;
drop table TB_PMTOD;
create table TB_PMTOD  (
   PMTOD_ID             INTEGER                         not null,  /*活动赠品发放单赠品ID          */
   PMTOD001             INTEGER                         not null,  /*活动赠品发放单ID              */
   PMTOD002             VARCHAR2(2)                     not null,  /*促销类型                      */
   PMTOD003             INTEGER                         not null,  /*促销单ID                      */
   PMTOD004             VARCHAR2(5),                               /*规则代码                      */
   PMTOD005             INTEGER                         not null,  /*赠品代码ID                    */
   PMTOD006             INTEGER                         not null,  /*单位ID                        */
   PMTOD007             NUMBER(18,3),                              /*可赠送数量                    */
   PMTOD008             NUMBER(18,3),                              /*实赠送数量                    */
   PMTOD009             NUMBER(12,2),                              /*单价                          */
   PMTOD010             NUMBER(12,2),                              /*金额                          */
   PMTOD011             NUMBER(18,3),                              /*已退数量                      */
   PMTOD012             VARCHAR2(255),                             /*备注                          */
   PMTOD013             VARCHAR2(16),                              /*促销单号                      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                      */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                  */                               
   CREATE_DATE          DATE,                                      /*建立日期                      */
   MODIFIER             VARCHAR2(12),                              /*修改人员                      */
   MODI_DATE            DATE,                                      /*修改日期                      */
   FLAG                 NUMBER(1),                                 /*资料状态                      */
   constraint PK_TB_PMTOD primary key (PMTOD_ID)
);
create unique index AK_TB_PMTOD on TB_PMTOD (PMTOD001,PMTOD002,PMTOD003,PMTOD005);
create sequence SEQ_TB_PMTOD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTOD to public;
grant index  on TB_PMTOD to public;
grant update on TB_PMTOD to public; 
grant delete on TB_PMTOD to public;  
grant insert on TB_PMTOD to public; 
grant select on SEQ_TB_PMTOD to public;   