/*
================================================================================
��ṹ����:TB_DTBCK
��ṹ����:����ά������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DTBCK;
drop index AK_TB_DTBCK;
drop table TB_DTBCK;
create table TB_DTBCK  (                                       
   DTBCK_ID           INTEGER                         not null,     /*����ά��ID      */ 
   DTBCK001           VARCHAR2(30)                    not null,     /*�������        */ 
   DTBCK002           NUMBER(4)                       not null,     /*ά�����        */ 
   DTBCK003           DATE                            not null,     /*ά������        */ 
   DTBCK004           VARCHAR2(1)                     not null,     /*ά������        */ 
   DTBCK005           VARCHAR2(255),                                /*��������        */ 
   DTBCK006           VARCHAR2(255),                                /*���⴦��        */ 
   DTBCK007           INTEGER,                                      /*������          */ 
   DTBCK008           VARCHAR2(1)                     not null,     /*��������        */ 
   DTBCK009           VARCHAR2(1),                                  /*���ڵ�λ        */
   DTBCK010             VARCHAR2(1),                               /*���״̬        */                                                                               
   DTBCK011             INTEGER,                                   /*¼����          */                                                                               
   DTBCK012             DATE,                                      /*¼������        */                                                                                
   DTBCK013             INTEGER,                                   /*�����          */                                                                                
   DTBCK014             DATE,                                      /*�������        */        
   CREATE_USER        VARCHAR2(12),                                 /*������Ա        */
   USER_GROUP         VARCHAR2(12),                                 /*������Ա����    */
   CREATE_DATE        DATE,                                         /*��������        */
   MODIFIER           VARCHAR2(12),                                 /*�޸���Ա        */
   MODI_DATE          DATE,                                         /*�޸�����        */
   FLAG               NUMBER(1),                                    /*����״̬        */
   
   constraint PK_TB_DTBCK primary key (DTBCK_ID)                               
);                                           
create unique index AK_TB_DTBCK on TB_DTBCK (DTBCK001);               
create sequence SEQ_TB_DTBCK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBCK to public;                                     
grant index  on TB_DTBCK to public;                                     
grant update on TB_DTBCK to public;                                      
grant delete on TB_DTBCK to public;                                       
grant insert on TB_DTBCK to public;                                      
grant select on SEQ_TB_DTBCK to public;                                        