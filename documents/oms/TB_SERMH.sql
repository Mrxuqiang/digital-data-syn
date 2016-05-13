/*
================================================================================
��ṹ����:TB_SERMH
��ṹ����:�̻����ÿ۷���ID
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_SERMH;
drop index AK_TB_SERMH;
drop table TB_SERMH;
create table TB_SERMH  (                                       
   SERMH_ID           INTEGER                 not null,            /*�̻����ÿ۷���ID  */   
   SERMH001           INTEGER                 not null,            /*�̻����ÿ۷���ID  */   
   SERMH002           INTEGER                 not null,            /*�۷���ĿID        */   
   SERMH003           NUMBER(4,2),                                 /*�ۼ�����          */  
   SERMH004           VARCHAR2(255),                               /*��ע              */ 
   SERMH005           VARCHAR2(10),                                /*�������          */           
   CREATE_USER        VARCHAR2(12),                                /*������Ա          */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����      */
   CREATE_DATE        DATE,                                        /*��������          */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա          */
   MODI_DATE          DATE,                                        /*�޸�����          */
   FLAG               NUMBER(1),                                   /*����״̬          */
   
   constraint PK_TB_SERMH primary key (SERMH_ID)                               
);                                           
create unique index AK_TB_SERMH on TB_SERMH (SERMH001,SERMH002,SERMH005,FLAG);               
create sequence SEQ_TB_SERMH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMH to public;                                     
grant index  on TB_SERMH to public;                                     
grant update on TB_SERMH to public;                                      
grant delete on TB_SERMH to public;                                       
grant insert on TB_SERMH to public;                                      
grant select on SEQ_TB_SERMH to public;                                        