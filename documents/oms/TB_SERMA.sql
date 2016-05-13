/*
================================================================================
��ṹ����:TB_SERMA
��ṹ����:Ͷ�߹�������
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_SERMA;
drop index AK_TB_SERMA;
drop table TB_SERMA;
create table TB_SERMA  (                                       
   SERMA_ID           INTEGER                 not null,            /*Ͷ�߹���ID      */     
   SERMA002           NUMBER(2) ,                                  /*������ʱ��      */   
   SERMA003           NUMBER(2),                                   /*������ʱ��      */   
   CREATE_USER        VARCHAR2(12),                                /*������Ա        */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����    */
   CREATE_DATE        DATE,                                        /*��������        */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա        */
   MODI_DATE          DATE,                                        /*�޸�����        */
   FLAG               NUMBER(1),                                   /*����״̬        */
   
   constraint PK_TB_SERMA primary key (SERMA_ID)                               
);                                                         
create sequence SEQ_TB_SERMA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMA to public;                                     
grant index  on TB_SERMA to public;                                     
grant update on TB_SERMA to public;                                      
grant delete on TB_SERMA to public;                                       
grant insert on TB_SERMA to public;                                      
grant select on SEQ_TB_SERMA to public;                                        