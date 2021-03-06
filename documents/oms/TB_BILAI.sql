/*
================================================================================
表结构代码:TB_BILAI
表结构名称:费用退款申请单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILAI;
drop index AK_TB_BILAI;
drop table TB_BILAI;
create table TB_BILAI  (
   BILAI_ID             INTEGER                         not null,  /*费用退款申请单主ID   */
   BILAI001             INTEGER                         not null,  /*单别ID               */
   BILAI002             VARCHAR2(30)                    not null,  /*单号                 */
   BILAI003             DATE                            not null,  /*退款申请日期         */
   BILAI004             INTEGER                         not null,  /*商户ID               */
   BILAI005             INTEGER,                                   /*展位ID               */  
   BILAI006             INTEGER,                                   /*合同ID               */
   BILAI007             INTEGER,                                   /*营运组织ID           */                    
   BILAI008             VARCHAR2(255),                             /*备注                 */  
   BILAI009             INTEGER,                                   /*录入人               */
   BILAI010             DATE,                                      /*录入日期             */
   BILAI011             VARCHAR2(1),                               /*单据状态             */
   BILAI012             INTEGER,                                   /*审核人               */
   BILAI013             DATE,                                      /*审核日期             */ 
   BILAI014             INTEGER,                                   /*楼栋ID               */  
   BILAI015             INTEGER,                                   /*楼层ID               */                  
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER,                                    /*资料状态             */
   constraint PK_TB_BILAI primary key (BILAI_ID)
);
create unique index AK_TB_BILAI on TB_BILAI (BILAI001,BILAI002,BILAI007,FLAG);
create sequence SEQ_TB_BILAI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILAI to public;
grant index  on TB_BILAI to public;
grant update on TB_BILAI to public; 
grant delete on TB_BILAI to public;  
grant insert on TB_BILAI to public; 
grant select on SEQ_TB_BILAI to public;   