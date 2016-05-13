20140721 CREATE BY SUNDAN


/*
================================================================================
表结构代码:TB_OTMCC
表结构名称:收银单上传表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_OTMCC;
drop index AK_TB_OTMCC;
drop table TB_OTMCC;
create table TB_OTMCC  (
   OTMCC_ID             INTEGER                         not null,  /*收银单上传ID             */
   OTMCC001             INTEGER                         not null,  /*收款来源     1、线上 2、线下      */
   OTMCC002             VARCHAR2(30),				   /*星易家支付编号           */
   OTMCC003             VARCHAR2(30),				   /*OMS收款单号               */
   OTMCC004             INTEGER,				       /*支付方式  1、星易家（线上） 2、现金（星易家） 3、银行卡（星易家）           */   
   OTMCC005             date,				not null,  /*交款日期               */
   OTMCC006             NUMBER(22,2),                              /*交款金额             */  
   OTMCC007             NUMBER(12,2),				   /*手续费              */ 
   OTMCC008             VARCHAR2(30),                              /*星易家订单编号            */ 
   STATUS               VARCHAR2(1),				  /*传送状态  0：未传送 1：传送成功 2：传送失败 3：已送货，未传送 4：已送货，传送成功         */  
   MSG                  VARCHAR2(300),                             /*消息提示           */  
   Tran_date            Date,                                      /*传输日期            */ 
   Send_count           INTEGER,                                   /*传输次数           */ 
                
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                    /*资料状态           */
   constraint PK_TB_OTMCC primary key (OTMCC_ID)
);

create sequence SEQ_TB_OTMCC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_OTMCC to public;
grant index  on TB_OTMCC to public;
grant update on TB_OTMCC to public; 
grant delete on TB_OTMCC to public;  
grant insert on TB_OTMCC to public; 
grant select on SEQ_TB_OTMCC to public;   