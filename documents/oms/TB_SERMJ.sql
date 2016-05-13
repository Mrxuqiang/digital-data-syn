/*
================================================================================
��ṹ����:TB_SERMJ
��ṹ����:�۷���Ϊ����
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_SERMJ;
drop index AK_TB_SERMJ;
drop table TB_SERMJ;
create table TB_SERMJ  (                                       
   SERMJ_ID           INTEGER                 not null,            /*��ΪID            */   
   SERMJ001           VARCHAR2(20)            not null,            /*��Ϊ����          */   
   SERMJ002           VARCHAR2(100)           not null,            /*��Ϊ����          */  
   SERMJ003           VARCHAR2(1),                                 /*����              */ 
   SERMJ004           VARCHAR2(1),                                 /*�Ƿ�������������  */ 
   SERMJ005           INTEGER,                                     /*γ��ID            */            
   SERMJ006           VARCHAR2(255),                               /*��ע              */            
   CREATE_USER        VARCHAR2(12),                                /*������Ա          */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����      */
   CREATE_DATE        DATE,                                        /*��������          */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա          */
   MODI_DATE          DATE,                                        /*�޸�����          */
   FLAG               NUMBER(1),                                   /*����״̬          */
   
   constraint PK_TB_SERMJ primary key (SERMJ_ID)                               
);                                           
create unique index AK_TB_SERMJ on TB_SERMJ (SERMJ001,FLAG);               
create sequence SEQ_TB_SERMJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMJ to public;                                     
grant index  on TB_SERMJ to public;                                     
grant update on TB_SERMJ to public;                                      
grant delete on TB_SERMJ to public;                                       
grant insert on TB_SERMJ to public;                                      
grant select on SEQ_TB_SERMJ to public;                                        