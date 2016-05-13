/*
20130803 add by gaoxl for ���÷�������SERIB009��SERIB010
*/
/*
================================================================================
��ṹ����:TB_SERIB
��ṹ����:��Ʒ���ƻ��ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SERIB;
drop index AK_TB_SERIB;
drop table TB_SERIB;
create table TB_SERIB  (                                       
   SERIB_ID           INTEGER                 not null,            /*���ƻ���ID    */   
   SERIB001           INTEGER                 not null,            /*���ƻ���ID    */   
   SERIB002           INTEGER ,                                    /*¥��            */   
   SERIB003           INTEGER,                                     /*¥��            */   
   SERIB004           INTEGER ,                                    /*չλ            */   
   SERIB005           INTEGER                 not null,            /*Ʒ��            */   
   SERIB006           VARCHAR2(1),                                 /*�ƻ������Ŀ    */ 
   SERIB007           NUMBER(2),                                   /*����·�       */   
   SERIB008           DATE,                                        /*ʵ�ʼ������    */
   SERIB009           INTEGER,                                     /*�̻���ID        */ 
   SERIB010           INTEGER,                                     /*��ͬ��ID        */    
   CREATE_USER        VARCHAR2(12),                                /*������Ա        */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����    */
   CREATE_DATE        DATE,                                        /*��������        */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա        */
   MODI_DATE          DATE,                                        /*�޸�����        */
   FLAG               NUMBER(1),                                   /*����״̬        */
   
   constraint PK_TB_SERIB primary key (SERIB_ID)                               
);                                           
create unique index AK_TB_SERIB on TB_SERIB (SERIB001,SERIB005);               
create sequence SEQ_TB_SERIB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIB to public;                                     
grant index  on TB_SERIB to public;                                     
grant update on TB_SERIB to public;                                      
grant delete on TB_SERIB to public;                                       
grant insert on TB_SERIB to public;                                      
grant select on SEQ_TB_SERIB to public;                                        