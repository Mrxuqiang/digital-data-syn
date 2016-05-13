/*
================================================================================
表结构代码:TB_BILAG
表结构名称:费用退款单
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_BILAG;
drop index AK_TB_BILAG;
drop table TB_BILAG;
create table TB_BILAG  (
   BILAG_ID             INTEGER                         not null,  /*退款单主ID          */
   BILAG001             INTEGER                         not null,  /*单别ID               */
   BILAG002             VARCHAR2(30)                    not null,  /*单号                 */
   BILAG003             DATE                            not null,  /*退款日期             */
   BILAG004             INTEGER                         not null,  /*商户ID               */
   BILAG005             INTEGER,                                   /*展位ID               */  
   BILAG006             INTEGER,                                   /*合同ID               */
   BILAG007             INTEGER,                                   /*营运组织ID           */        
   BILAG008             VARCHAR2(1)                     not null,  /*退款方式             */
   BILAG009             NUMBER(22,2),                              /*退款金额             */         
   BILAG010             VARCHAR2(255),                             /*备注                 */  
   BILAG011             INTEGER,                                   /*录入人               */
   BILAG012             DATE,                                      /*录入日期             */
   BILAG013             VARCHAR2(1),                               /*单据状态             */
   BILAG014             INTEGER,                                   /*审核人               */
   BILAG015             DATE,                                      /*审核日期             */ 
   BILAG016             VARCHAR2(1),                               /*退款类型             */
   BILAG017             VARCHAR2(30),                              /*银行名称             */
   BILAG018             VARCHAR2(20),                              /*银行账户号码         */
   BILAG019             VARCHAR2(30),                              /*开户人姓名           */                          
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER,                                    /*资料状态             */
   constraint PK_TB_BILAG primary key (BILAG_ID)
);
create unique index AK_TB_BILAG on TB_BILAG (BILAG001,BILAG002,FLAG);
create sequence SEQ_TB_BILAG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILAG to public;
grant index  on TB_BILAG to public;
grant update on TB_BILAG to public; 
grant delete on TB_BILAG to public;  
grant insert on TB_BILAG to public; 
grant select on SEQ_TB_BILAG to public;   