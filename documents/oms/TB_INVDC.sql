/*
================================================================================
表结构代码:TB_INVDC
表结构名称:借出还回单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVDC;
drop index AK_TB_INVDC;
drop table TB_INVDC;
create table TB_INVDC  (
   INVDC_ID             INTEGER                         not null,     /*还回单ID      */     
   INVDC001             INTEGER                         not null,     /*还回单别      */     
   INVDC002             VARCHAR2(30)                    not null,     /*还回单号      */     
   INVDC003             INTEGER                         not null,     /*来源单号      */     
   INVDC004             DATE                            not null,     /*还回日期      */     
   INVDC005             INTEGER                         not null,     /*还回营运组织  */     
   INVDC006             INTEGER                         not null,     /*还回部门      */     
   INVDC007             INTEGER                         not null,     /*还回人员      */     
   INVDC008             VARCHAR2(1)                     not null,     /*借出对象      */     
   INVDC009             INTEGER                         not null,     /*顾客姓名      */     
   INVDC010             INTEGER,                                       /*支出单号      */     
   INVDC011             VARCHAR2(255),                                 /*备注          */     
   INVDC012             VARCHAR2(1),                                  /*审核状态      */     
   INVDC013             INTEGER,                                       /*录入人        */     
   INVDC014             DATE,                                         /*录入日期      */     
   INVDC015             INTEGER,                                      /*审核人        */     
   INVDC016             DATE,                                         /*审核日期      */    
   CREATE_USER          VARCHAR2(12),                                 /*建立人员        */
   USER_GROUP           VARCHAR2(12),                                 /*建立人员部门    */                               
   CREATE_DATE          DATE,                                         /*建立日期        */
   MODIFIER             VARCHAR2(12),                                 /*修改人员        */
   MODI_DATE            DATE,                                         /*修改日期        */
   FLAG                 NUMBER(1),                                    /*资料状态        */
   constraint PK_TB_INVDC primary key (INVDC_ID)
);
create unique index AK_TB_INVDC on TB_INVDC (INVDC001,INVDC002,INVDC005);
create sequence SEQ_TB_INVDC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVDC to public;
grant index  on TB_INVDC to public;
grant update on TB_INVDC to public; 
grant delete on TB_INVDC to public;  
grant insert on TB_INVDC to public; 
grant select on SEQ_TB_INVDC to public;   