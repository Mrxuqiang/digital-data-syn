/*
================================================================================
表结构代码:TB_CONNA
表结构名称:品类协议主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONNA;
drop index AK_TB_CONNA;
drop table TB_CONNA;
create table TB_CONNA  (
   CONNA_ID             INTEGER                         not null,  /*品类协议ID		     */
   CONNA001             VARCHAR2(30)                    not null,  /*协议号	             */
   CONNA002             NUMBER(5)                       not null,  /*版本号		     */
   CONNA003             VARCHAR2(1)                     not null,  /*供应商ID		     */
   CONNA004             INTEGER                         not null,  /*签约法人ID		     */
   CONNA005             INTEGER                         not null,  /*正常供货天数	     */
   CONNA006             INTEGER                         not null,  /*定制供货天数	     */
   CONNA007             DATE,  					   /*合同起日		     */
   CONNA008             DATE,  					   /*合同止日		     */
   CONNA009             DATE,                                      /*废止日期		     */
   CONNA010             INTEGER,                                   /*录入人ID		     */
   CONNA011             DATE,                                      /*录入日期		     */
   CONNA012             INTEGER,                                   /*审核人ID		     */
   CONNA013             VARCHAR2(1),                               /*审核状态：              */ --Y-已审核 N-未审核 Z-已废止
   CONNA014             VARCHAR2(255),                             /*备注		     */
   CONNA015             INTEGER                        not null,   /*协议单别                */
   CONNA016             DATE,                                      /*审核日期		     */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门            */                               
   CREATE_DATE          DATE,                                      /*建立日期                */
   MODIFIER             VARCHAR2(12),                              /*修改人员                */
   MODI_DATE            DATE,                                      /*修改日期                */
   FLAG                 NUMBER(1),                                 /*资料状态                */
   constraint PK_TB_CONNA primary key (CONNA_ID)
);
create unique index AK_TB_CONNA on TB_CONNA (CONNA001,CONNA002);

create sequence SEQ_TB_CONNA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONNA to public;
grant index  on TB_CONNA to public;
grant update on TB_CONNA to public; 
grant delete on TB_CONNA to public;  
grant insert on TB_CONNA to public; 
grant select on SEQ_TB_CONNA to public;   
