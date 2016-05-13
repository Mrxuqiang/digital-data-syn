/*
================================================================================
��ṹ����:TB_SERME
��ṹ����:�̻�����
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_SERME;
drop index AK_TB_SERME;
drop table TB_SERME;
create table TB_SERME  (                                       
   SERME_ID           INTEGER                 not null,            /*�̻�����ID        */  
   SERME001           INTEGER                 not null,            /*Ӫ����֯ID      */
   SERME002           VARCHAR2(30)            not null,            /*����              */   
   SERME003           INTEGER                 not null,            /*��ͬID             */ 
   SERME004           VARCHAR2(80) ,                               /*�̻��˻�����             */  
   SERME005           VARCHAR2(80) ,                               /*�̻��˻��˺�             */   
   SERME006           VARCHAR2(80) ,                               /*�̻�����������             */   
   SERME007           VARCHAR2(30) ,                               /*��ϵ��             */ 
   SERME008           VARCHAR2(30) ,                               /*�绰             */  
   SERME009           VARCHAR2(80) ,                               /*��ע1             */   
   SERME010           VARCHAR2(80) ,                               /*��ע2             */  
   SERME011           VARCHAR2(1)             not null,            /*״̬  0.����/1.ͣ��             */ 
   SERME012           INTEGER,                                     /*����ת��id        */          
   CREATE_USER        VARCHAR2(12),                                /*������Ա          */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����      */
   CREATE_DATE        DATE,                                        /*��������          */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա          */
   MODI_DATE          DATE,                                        /*�޸�����          */
   FLAG               NUMBER(1),                                   /*����״̬          */
   
   constraint PK_TB_SERME primary key (SERME_ID)                               
);
create unique index AK_TB_SERME on TB_SERME (SERME002);                                                          
create sequence SEQ_TB_SERME minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERME to public;                                     
grant index  on TB_SERME to public;                                     
grant update on TB_SERME to public;                                      
grant delete on TB_SERME to public;                                       
grant insert on TB_SERME to public;                                      
grant select on SEQ_TB_SERME to public;                                        