/*
================================================================================
表结构代码:TB_CONNC
表结构名称:品类协议调整单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONNC;
drop index AK_TB_CONNC;
drop table TB_CONNC;
create table TB_CONNC  (
   CONNC_ID             INTEGER                         not null,  /*品类协议调整ID		     */
   CONNC001             INTEGER                         not null,  /*单别             	             */
   CONNC002             VARCHAR2(20)                    not null,  /*调整单号    		     */
   CONNC003             INTEGER                         not null,  /*品类协议ID     		     */
   CONNC004             NUMBER(5)                       not null,  /*协议版本号  		     */
   CONNC005             INTEGER                         not null,  /*供应商ID             	     */
   CONNC006             INTEGER                         not null,  /*签约法人ID         	     */
   CONNC007             VARCHAR2(1),  		                   /*即刻生效      		     */
   CONNC008             DATE,  					   /*生效日期  		             */
   CONNC009             DATE,                                      /*生效起日		             */
   CONNC010             DATE,                                      /*生效止日		             */
   CONNC011             INTEGER                         not null,  /*正常供货天数	             */
   CONNC012             INTEGER                         not null,  /*定制供货天数	             */
   CONNC013             INTEGER,                                   /*录入人ID		             */
   CONNC014             DATE,                                      /*录入日期		             */
   CONNC015             INTEGER,                                   /*审核人ID		             */
   CONNC016             VARCHAR2(1),                               /*审核状态：                      */ --Y-已审核 N-未审核
   CONNC017             DATE,                                      /*审核日期		             */
   CONNC018             VARCHAR2(255),                             /*备注		             */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                        */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                    */                               
   CREATE_DATE          DATE,                                      /*建立日期                        */
   MODIFIER             VARCHAR2(12),                              /*修改人员                        */
   MODI_DATE            DATE,                                      /*修改日期                        */
   FLAG                 NUMBER(1),                                 /*资料状态                        */
   constraint PK_TB_CONNC primary key (CONNC_ID)
);
create unique index AK_TB_CONNC on TB_CONNC (CONNC002,CONNC004);

create sequence SEQ_TB_CONNC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONNC to public;
grant index  on TB_CONNC to public;
grant update on TB_CONNC to public; 
grant delete on TB_CONNC to public;  
grant insert on TB_CONNC to public; 
grant select on SEQ_TB_CONNC to public;   
