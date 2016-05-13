/*
================================================================================
表结构代码:TB_HRBAP
表结构名称:员工发薪月档子单身
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_HRBAP;
drop index AK_TB_HRBAP;
drop table TB_HRBAP;
create table TB_HRBAP  (
   HRBAP_ID             INTEGER                         not null,  /*员工薪资月档子单身表ID */
   HRBAP001             INTEGER                         not null,  /*员工薪资月档单身表ID   */
   HRBAP002             INTEGER                         not null,  /*薪资项目ID         */
   HRBAP003             INTEGER                         not null,  /*薪资组ID           */   
   HRBAP004             INTEGER                         not null,  /*员工ID             */
   HRBAP005             NUMBER(12,2),                              /*金额               */
   HRBAP006             VARCHAR2(1)                     not null,  /*计税方式           */ 
   HRBAP007             NUMBER(1)                       not null,  /*是否薪资项         */
   HRBAP008             NUMBER(1)                       not null,  /*是否成本项         */  
   HRBAP009             NUMBER(1)                       not null,  /*是否扣减项         */
   HRBAP010             NUMBER(1)                       not null,  /*是否福利项         */        
   HRBAP011             NUMBER(1)                       not null,  /*进位方式           */
   HRBAP012             VARCHAR2(12),                   not null,  /*会计科目一         */
   HRBAP013             VARCHAR2(12),                   not null,  /*会计科目二         */ 
   HRBAP014             VARCHAR2(255)                   not null,  /*备注               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_HRBAP primary key (HRBAP_ID)
);
create unique index AK_TB_HRBAP on TB_HRBAP (HRBAP001);
create sequence SEQ_TB_HRBAP minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_HRBAP to public;
grant index  on TB_HRBAP to public;
grant update on TB_HRBAP to public; 
grant delete on TB_HRBAP to public;  
grant insert on TB_HRBAP to public; 
grant select on SEQ_TB_HRBAP to public;   