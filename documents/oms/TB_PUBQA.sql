/*
================================================================================
表结构代码:TB_PUBQA
表结构名称:利率表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBQA;
drop index AK_TB_PUBQA;
drop table TB_PUBQA;
create table TB_PUBQA  (
   PUBQA_ID             INTEGER                              not null,  /*利率ID             */
   PUBQA001             VARCHAR2(4)                          not null,  /*利率编码           */
   PUBQA002             VARCHAR2(60)                         not null,  /*利率名称           */
   PUBQA003             VARCHAR2(1)                          not null,  /*利率类型           */
   PUBQA004             DATE                                 not null,  /*利率起效日         */
   PUBQA005             VARCHAR2(1)                          not null,  /*利率性质           */
   PUBQA006             DATE                                 not null,  /*利率录入日期       */
   PUBQA007             VARCHAR2(1)                          not null,  /*日利率天数         */
   PUBQA008             VARCHAR2(1)                          not null,  /*封存标示           */
   PUBQA009             VARCHAR2(255),                                  /*备注               */
   PUBQA010             NUMBER(7,6)                          not null,  /*年利率             */
   PUBQA011             NUMBER(7,6)                          not null,  /*月利率             */
   PUBQA012             NUMBER(7,6)                          not null,  /*日利率             */
   PUBQA013             NUMBER(16,2),                                   /*透支起点金额       */
   PUBQA014             NUMBER(6),                                      /*透支起点天数       */
   PUBQA015             NUMBER(7,6),                                    /*透支年利率         */  
   PUBQA016             NUMBER(7,6),                                    /*透支月利率         */  
   PUBQA017             NUMBER(7,6),                                    /*透支日利率         */  
   PUBQA018             NUMBER(7,6),                                    /*挪用年利率         */  
   PUBQA019             NUMBER(7,6),                                    /*挪用月利率         */  
   PUBQA020             NUMBER(7,6) ,                                   /*挪用日利率         */        
   CREATE_USER          VARCHAR2(12),                                   /*建立人员            */
   USER_GROUP           VARCHAR2(12),                                   /*建立人员部门        */                               
   CREATE_DATE          DATE,                                           /*建立日期            */
   MODIFIER             VARCHAR2(12),                                   /*修改人员            */
   MODI_DATE            DATE,                                           /*修改日期            */
   FLAG                 NUMBER(1),                                      /*资料状态            */
   constraint PK_TB_PUBQA primary key (PUBQA_ID)
);
create uQAque index AK_TB_PUBQA on TB_PUBQA (PUBQA001);
create sequence SEQ_TB_PUBQA minvalue 1 QAxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBQA to public;
grant index  on TB_PUBQA to public;
grant update on TB_PUBQA to public; 
grant delete on TB_PUBQA to public;  
grant insert on TB_PUBQA to public; 
grant select on SEQ_TB_PUBQA to public;   