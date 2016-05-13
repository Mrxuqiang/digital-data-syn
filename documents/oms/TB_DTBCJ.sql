/*
================================================================================
��ṹ����:TB_DTBCJ
��ṹ����:�������͵�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DTBCJ;
drop index AK_TB_DTBCJ;
drop table TB_DTBCJ;
create table TB_DTBCJ  (                                       
   DTBCJ_ID          INTEGER                            not null,   /*��������ID    */     
   DTBCJ001          INTEGER                            not null,   /*�������      */  
   DTBCJ002          DATE                               not null,   /*��������      */  
   DTBCJ003          NUMBER(18,3)                       not null,   /*������        */  
   DTBCJ004          NUMBER(12,2)                       not null,   /*���ͽ��      */  
   DTBCJ005          INTEGER                            not null,   /*������Ա      */  
   DTBCJ006          VARCHAR2(255),                                 /*���͵ص�      */  
   DTBCJ007          VARCHAR2(1)                        not null,   /*���ʽ      */  
   CREATE_USER        VARCHAR2(12),                                          /*������Ա        */             
   USER_GROUP         VARCHAR2(12),                                          /*������Ա����    */             
   CREATE_DATE        DATE,                                                  /*��������        */             
   MODIFIER           VARCHAR2(12),                                          /*�޸���Ա        */             
   MODI_DATE          DATE,                                                  /*�޸�����        */             
   FLAG               NUMBER(1),                                             /*����״̬        */            


  constraint PK_TB_DTBCJ primary key (DTBCJ_ID)                               
);                                           
create unique index AK_TB_DTBCJ on TB_DTBCJ (DTBCJ001,DTBCJ002);               
create sequence SEQ_TB_DTBCJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBCJ to public;                                     
grant index  on TB_DTBCJ to public;                                     
grant update on TB_DTBCJ to public;                                      
grant delete on TB_DTBCJ to public;                                       
grant insert on TB_DTBCJ to public;                                      
grant select on SEQ_TB_DTBCJ to public;                                        