/*
================================================================================
表结构代码:TB_OTSAD
表结构名称:租费类收款数据
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_OTSAD;
drop index AK_TB_OTSAD;
drop table TB_OTSAD;
create table TB_OTSAD  (
   OTSAD_ID             INTEGER                         not null,  /*费用收款ID        */
   OTSAD001             VARCHAR2(8)                     not null,  /*商场编码           */
   OTSAD002             DATE,                                      /*日期               */
   OTSAD003             VARCHAR2(4),                               /*预收年度           */   
   OTSAD004             VARCHAR2(2),                               /*预收月份           */ 
   OTSAD005             VARCHAR2(8),                               /*客户编码           */  
   OTSAD006             VARCHAR2(13),                              /*合同编码           */
   OTSAD007             VARCHAR2(30),                              /*收款单号           */ 
   OTSAD008             VARCHAR2(2),                               /*业务类型           */
   OTSAD009             VARCHAR2(4),                               /*收付款方式         */  
   OTSAD010             VARCHAR2(4),                               /*费用项编码         */
   OTSAD011             NUMBER(22,2),                              /*金额               */         
   OTSAD012             VARCHAR2(1),                               /*冲销标识           */
   OTSAD013             VARCHAR2(50),                              /*备注               */
   OTSAD014             VARCHAR2(10),                              /*票号/收据号        */  
   OTSAD015             VARCHAR2(4),                               /*会计年度           */
   OTSAD016             INTEGER,                                   /*费用收款主ID       */ 
   OTSAD017             INTEGER,                                   /*费用收款子ID       */ 
   OTSAD018             VARCHAR2(4),                               /*公司代码           */ 
   OTSAD019             VARCHAR2(4),                               /*贸易公司代码       */   
   OTSAD020             VARCHAR2(50),                              /*收款人             */  
   OTSAD021             DATE,                                      /*收款日期           */          
   accountNO            VARCHAR2(10),                              /*凭证编号           */
   status               VARCHAR2(1),                               /*状态标识           */
   msg                  VARCHAR2(255),                             /*消息               */  
   tran_code		        VARCHAR2(50),				                       /*传输流水码         */
   tran_row		          VARCHAR2(50),				                       /*行项目号           */
   send_counts		      INTEGER,				                           /*发送次数 默认 0    */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_OTSAD primary key (OTSAD_ID)
);
create unique index AK_TB_OTSAD on TB_OTSAD (OTSAD001,OTSAD002,OTSAD003,OTSAD004,OTSAD005,OTSAD006);
create sequence SEQ_TB_OTSAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTSAD to public;
grant index  on TB_OTSAD to public;
grant update on TB_OTSAD to public; 
grant delete on TB_OTSAD to public;  
grant insert on TB_OTSAD to public; 
grant select on SEQ_TB_OTSAD to public;   