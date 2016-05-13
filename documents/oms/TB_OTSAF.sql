/*
================================================================================
表结构代码:TB_OTSAF
表结构名称:订金转租金借口表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_OTSAF;
drop index AK_TB_OTSAF;
drop table TB_OTSAF;
create table TB_OTSAF  (
   OTSAF_ID             INTEGER                         not null,  /*订转租ID         */
   OTSAF001             VARCHAR2(8)                     not null,  /*商场编码           */
   OTSAF002             DATE,                                      /*日期               */
   OTSAF003             VARCHAR2(4),                               /*会计年度           */   
   OTSAF004             VARCHAR2(2),                               /*会计期间           */ 
   OTSAF005             VARCHAR2(8),                               /*转入商户           */  
   OTSAF006             VARCHAR2(13),                              /*合同编码           */
   OTSAF007             VARCHAR2(30),                              /*收款单号           */ 
   OTSAF008             VARCHAR2(2),                               /*业务类型           */
   OTSAF009             VARCHAR2(4),                               /*转出费用项         */  
   OTSAF010             VARCHAR2(4),                               /*转入费用想         */
   OTSAF011             NUMBER(22,2),                              /*金额               */         
   OTSAF012             VARCHAR2(1),                               /*冲销标识           */
   OTSAF013             VARCHAR2(50),                              /*备注               */
   OTSAF014             VARCHAR2(10),                              /*票号/收据号        */  
   OTSAF015             VARCHAR2(4),                               /*会计年度           */
   OTSAF016             INTEGER,                                   /*费用收款主ID       */ 
   OTSAF017             INTEGER,                                   /*费用收款子ID       */   
   OTSAF018             VARCHAR2(20),                              /*公司代码           */  
   OTSAF019             VARCHAR2(20),                              /*贸易公司代码       */     
   OTSAF020             VARCHAR2(8),                               /*转出商户           */           
   accountNO            VARCHAR2(10),                              /*凭证编号           */
   status               VARCHAR2(1),                               /*状态标识           */
   msg                  VARCHAR2(255),                             /*消息               */  
   tran_code		        VARCHAR2(50),				                       /*传输流水码         */
   tran_row		          VARCHAR2(50),				                       /*行项目号           */
   send_counts		      INTEGER,				                           /*发送次数 默认 0    */
   REAL_DATE            DATE,                                      /*审核日期           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_OTSAF primary key (OTSAF_ID)
);
create unique index AK_TB_OTSAF on TB_OTSAF (OTSAF016,OTSAF017);
create sequence SEQ_TB_OTSAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTSAF to public;
grant index  on TB_OTSAF to public;
grant update on TB_OTSAF to public; 
grant delete on TB_OTSAF to public;  
grant insert on TB_OTSAF to public; 
grant select on SEQ_TB_OTSAF to public;   