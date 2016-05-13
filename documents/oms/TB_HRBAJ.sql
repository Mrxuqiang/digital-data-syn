/*
================================================================================
表结构代码:TB_HRBAJ
表结构名称:计算项目设置表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_HRBAJ;
drop index AK_TB_HRBAJ;
drop table TB_HRBAJ;
create table TB_HRBAJ  (
   HRBAJ_ID             INTEGER                         not null,  /*计算项目设置ID     */
   HRBAJ001             VARCHAR2(8)                     not null,  /*计算项目编         */
   HRBAJ002             VARCHAR2(30)                    not null,  /*计算项目名         */
   HRBAJ003             VARCHAR2(1)                     not null,  /*计税方式           */ 
   HRBAJ004             NUMBER(1)                       not null,  /*是否薪资项         */
   HRBAJ005             NUMBER(1)                       not null,  /*是否成本项         */  
   HRBAJ006             NUMBER(1)                       not null,  /*是否扣减项         */
   HRBAJ007             NUMBER(1)                       not null,  /*是否福利项         */        
   HRBAJ008             NUMBER(1)                       not null,  /*进位方式           */
   HRBAJ009             VARCHAR2(12),                   not null,  /*会计科目一         */
   HRBAJ010             VARCHAR2(12),                   not null,  /*会计科目二         */                            HRBAJ011             DATE,                           not null,  /*备注               */                            HRBAJ012             VARCHAR2(255)                   not null,  /*公式格式解析       */  
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
                        
   constraint PK_TB_HRBAJ primary key (HRBAJ_ID)
);
create unique index AK_TB_HRBAJ on TB_HRBAJ (HRBAJ001);
create sequence SEQ_TB_HRBAJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_HRBAJ to public;
grant index  on TB_HRBAJ to public;
grant update on TB_HRBAJ to public; 
grant delete on TB_HRBAJ to public;  
grant insert on TB_HRBAJ to public; 
grant select on SEQ_TB_HRBAJ to public;   