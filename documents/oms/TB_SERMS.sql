/*
================================================================================
��ṹ����:TB_SERMS
��ṹ����:��ɫ�����ӱ�
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_SERMS;
drop index AK_TB_SERMS;
drop table TB_SERMS;
create table TB_SERMS  (                                       
   SERMS_ID           INTEGER                 not null,            /*��ɫ������ID */   
   SERMS001           INTEGER                 not null,            /*��ɫ������ID */   
   SERMS002           INTEGER                 not null,            /*Ʒ��ID       */  
   SERMS003           VARCHAR2(1),                                 /*��ɫ����     */ 
   SERMS004           VARCHAR2(255),                               /*��ע         */      
   CREATE_USER        VARCHAR2(12),                                /*������Ա          */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����      */
   CREATE_DATE        DATE,                                        /*��������          */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա          */
   MODI_DATE          DATE,                                        /*�޸�����          */
   FLAG               NUMBER(1),                                   /*����״̬          */
   
   constraint PK_TB_SERMS primary key (SERMS_ID)                               
);                                           
create unique index AK_TB_SERMS on TB_SERMS (SERMS001,SERMS002,FLAG);               
create sequence SEQ_TB_SERMS minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMS to public;                                     
grant index  on TB_SERMS to public;                                     
grant update on TB_SERMS to public;                                      
grant delete on TB_SERMS to public;                                       
grant insert on TB_SERMS to public;                                      
grant select on SEQ_TB_SERMS to public;                                        