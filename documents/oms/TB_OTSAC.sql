/*
================================================================================
表结构代码:TB_OTSAC
表结构名称:货款返款数据表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_OTSAC;
drop index AK_TB_OTSAC;
drop table TB_OTSAC;
create table TB_OTSAC  (
   OTSAC_ID             INTEGER                         not null,  /*返款款数据ID       */
   OTSAC001             VARCHAR2(8)                     not null,  /*商场编码           */
   OTSAC002             DATE,                                      /*日期               */
   OTSAC003             VARCHAR2(2),                               /*客户类型           */
   OTSAC004             VARCHAR2(4),                               /*收付款方式         */   
   OTSAC005             VARCHAR2(2),                               /*业务类型           */
   OTSAC006             VARCHAR2(10),                              /*客户编码           */
   OTSAC007             VARCHAR2(30),                              /*销售单号           */
   OTSAC008             NUMBER(22,2),                              /*金额               */
   OTSAC009             VARCHAR2(4),                               /*会计年度           */
   OTSAC010             VARCHAR2(2),                               /*商场结算周期       */
   OTSAC011             INTEGER,	                           	   /*商场结算周期       */
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
   constraint PK_TB_OTSAC primary key (OTSAC_ID)
);
create unique index AK_TB_OTSAC on TB_OTSAC (OTSAC001,OTSAC002,OTSAC003,OTSAC004,OTSAC005,OTSAC006);
create sequence SEQ_TB_OTSAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTSAC to public;
grant index  on TB_OTSAC to public;
grant update on TB_OTSAC to public; 
grant delete on TB_OTSAC to public;  
grant insert on TB_OTSAC to public; 
grant select on SEQ_TB_OTSAC to public;   