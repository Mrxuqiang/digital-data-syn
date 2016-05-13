/*
================================================================================
表结构代码:TB_AGECA
表结构名称:代收款集团返款单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_AGECA;
drop index AK_TB_AGECA;
drop table TB_AGECA;
create table TB_AGECA  (
   AGECA_ID             INTEGER                         not null,  /*代收款集团返款单ID          */
   AGECA001             INTEGER                         not null,  /*单别                        */
   AGECA002             VARCHAR2(30)                    not null,  /*返款单号                    */
   AGECA003             DATE                            not null,  /*返款日期                    */
   AGECA004             INTEGER                         not null,  /*商户ID                      */
   AGECA005             DATE                            not null,  /*默认开始日期                */
   AGECA006             DATE                            not null,  /*默认结束日期                */
   AGECA007             INTEGER                         not null,  /*营运组织ID                  */
   AGECA008             INTEGER                         not null,  /*业务部门ID                  */
   AGECA009             INTEGER                         not null,  /*业务人员ID                  */
   AGECA010             INTEGER,                                   /*应付单号ID                  */
   AGECA011             INTEGER,                                   /*应收单号ID                  */
   AGECA012             VARCHAR2(255),                             /*备注                        */
   AGECA013             INTEGER,                                   /*录入人ID                    */
   AGECA014             DATE,                                      /*录入日期                    */
   AGECA015             INTEGER,                                   /*审核人ID                    */
   AGECA016             DATE,                                      /*审核日期                    */
   AGECA017             VARCHAR2(1)                     not null,  /*审核状态                    */
   AGECA018             VARCHAR2(1),                               /*是否签核                    */
   AGECA019             VARCHAR2(30),                              /*签核单号                    */
   AGECA020             VARCHAR2(1),                               /*签核码                      */
   AGECA021             INTEGER                         not null,  /*返款方式ID                  */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                    */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                */                               
   CREATE_DATE          DATE,                                      /*建立日期                    */
   MODIFIER             VARCHAR2(12),                              /*修改人员                    */
   MODI_DATE            DATE,                                      /*修改日期                    */
   FLAG                 NUMBER(1),                                 /*资料状态                    */
   constraint PK_TB_AGECA primary key (AGECA_ID)
);
create unique index AK_TB_AGECA on TB_AGECA (AGECA002,AGECA006);
create sequence SEQ_TB_AGECA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AGECA to public;
grant index  on TB_AGECA to public;
grant update on TB_AGECA to public; 
grant delete on TB_AGECA to public;  
grant insert on TB_AGECA to public; 
grant select on SEQ_TB_AGECA to public;   