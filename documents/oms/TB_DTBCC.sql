/*
================================================================================
��ṹ����:TB_DTBCC
��ṹ����:·�������ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DTBCC;
drop index AK_TB_DTBCC;
drop table TB_DTBCC;
create table TB_DTBCC  (                                       
   DTBCC_ID          INTEGER                  not null,   /*·����ϸID     */     
   DTBCC001          INTEGER                  not null,   /*����·��ID     */     
   DTBCC002          VARCHAR2(3)              not null,   /*���䲽��       */     
   DTBCC003          VARCHAR2(1)              not null,   /*���䷽ʽ       */     
   DTBCC004          INTEGER                  not null,   /*��ʼ�ص�       */     
   DTBCC005          INTEGER                  not null,   /*Ŀ�ĵص�       */     
   DTBCC006          NUMBER(18,3)                         /*·������       */     
   DTBCC007          NUMBER(18,3)                         /*����ʱ��       */     
   DTBCC008          VARCHAR2(255)                        /*��ע           */     
   CREATE_USER      VARCHAR2(12),                                /*������Ա           */             
   USER_GROUP       VARCHAR2(12),                                /*������Ա����       */             
   CREATE_DATE      DATE,                                        /*��������           */             
   MODIFIER         VARCHAR2(12),                                /*�޸���Ա           */             
   MODI_DATE        DATE,                                        /*�޸�����           */             
   FLAG             NUMBER(1),                                   /*����״̬           */            


  constraint PK_TB_DTBCC primary key (DTBCC_ID)                               
);                                           
create unique index AK_TB_DTBCC on TB_DTBCC (DTBCC_ID);               
create sequence SEQ_TB_DTBCC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBCC to public;                                     
grant index  on TB_DTBCC to public;                                     
grant update on TB_DTBCC to public;                                      
grant delete on TB_DTBCC to public;                                       
grant insert on TB_DTBCC to public;                                      
grant select on SEQ_TB_DTBCC to public;                                        