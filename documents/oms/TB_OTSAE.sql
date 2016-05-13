/*
================================================================================
表结构代码:TB_OTSAE
表结构名称:费用退款数据
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_OTSAE;
drop index AK_TB_OTSAE;
drop table TB_OTSAE;
create table TB_OTSAE  (
   OTSAE_ID             INTEGER                         not null,  /*费用退款ID        */
   OTSAE001             VARCHAR2(8)                     not null,  /*商场编码           */
   OTSAE002             DATE,                                      /*日期               */
   OTSAE003             VARCHAR2(4),                               /*预收年度           */   
   OTSAE004             VARCHAR2(2),                               /*预收月份           */ 
   OTSAE005             VARCHAR2(8),                               /*客户编码           */  
   OTSAE006             VARCHAR2(30),                              /*合同编码           */
   OTSAE007             VARCHAR2(30),                              /*退款单号           */ 
   OTSAE008             VARCHAR2(2),                               /*业务类型           */
   OTSAE009             VARCHAR2(4),                               /*收付款方式         */  
   OTSAE010             VARCHAR2(4),                               /*费用项编码         */
   OTSAE011             NUMBER(22,2),                              /*金额               */         
   OTSAE012             VARCHAR2(1),                               /*冲销标识           */
   OTSAE013             VARCHAR2(50),                              /*备注               */
   OTSAE014             VARCHAR2(10),                              /*票号/收据号        */  
   OTSAE015             VARCHAR2(4),                               /*会计年度           */
   OTSAE016             VARCHAR2(30),                              /*银行名称           */  
   OTSAE017             VARCHAR2(30),                              /*账户               */ 
   OTSAE018             VARCHAR2(30),                              /*户主               */         
   OTSAE019             INTEGER,                                   /*费用退款主ID       */ 
   OTSAE020             INTEGER,                                   /*费用退款子ID       */     
   accountNO            VARCHAR2(10),                              /*凭证编号           */
   status               VARCHAR2(1),                               /*状态标识           */
   msg                  VARCHAR2(255),                             /*消息               */  
   tran_code		VARCHAR2(50),				   /*传输流水码*/
   tran_row		VARCHAR2(50),				   /*行项目号*/
   send_counts		INTEGER,				   /*发送次数 默认 0*/   
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_OTSAE primary key (OTSAE_ID)
);
create unique index AK_TB_PUBKC on TB_PUBKC (OTSAE001,OTSAE002,OTSAE003,OTSAE004,OTSAE005,OTSAE006);
create sequence SEQ_TB_OTSAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTSAE to public;
grant index  on TB_OTSAE to public;
grant update on TB_OTSAE to public; 
grant delete on TB_OTSAE to public;  
grant insert on TB_OTSAE to public; 
grant select on SEQ_TB_OTSAE to public;   