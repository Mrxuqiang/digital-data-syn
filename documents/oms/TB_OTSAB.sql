/*
================================================================================
表结构代码:TB_OTSAB
表结构名称:货款收款数据表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_OTSAB;
drop index AK_TB_OTSAB;
drop table TB_OTSAB;
create table TB_OTSAB  (
   OTSAB_ID             INTEGER                         not null,  /*收款数据ID         */
   OTSAB001             VARCHAR2(8)                     not null,  /*商场编码           */
   OTSAB002             VARCHAR2(8),                               /*交款日期           */
   OTSAB003             VARCHAR2(2),                               /*客户类型           */
   OTSAB004             VARCHAR2(4),                               /*收付款方式         */   
   OTSAB005             VARCHAR2(2),                               /*业务类型           */
   OTSAB006             NUMBER(22,2),                              /*金额               */
   OTSAB007             VARCHAR2(4),                               /*会计年度           */
   OTSAB008             VARCHAR2(2),                               /*商场结算周期       */
   OTSAB009				INTEGER,
   accountNO            VARCHAR2(10),                              /*凭证编号           */
   status               VARCHAR2(1),                               /*状态标识           */
   msg                  VARCHAR2(255),                             /*消息               */     
   tran_code			VARCHAR2(50),				   			   /*传输流水码*/
   tran_row				VARCHAR2(50),				   			   /*行项目号*/
   send_counts			INTEGER,				   				   /*发送次数 默认 0*/
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_OTSAB primary key (OTSAB_ID)
);
create unique index AK_TB_OTSAB on TB_OTSAB (OTSAB001,OTSAB002,OTSAB003,OTSAB004,OTSAB005);
create sequence SEQ_TB_OTSAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTSAB to public;
grant index  on TB_OTSAB to public;
grant update on TB_OTSAB to public; 
grant delete on TB_OTSAB to public;  
grant insert on TB_OTSAB to public; 
grant select on SEQ_TB_OTSAB to public;   