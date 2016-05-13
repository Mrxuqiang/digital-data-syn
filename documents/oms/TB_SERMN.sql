/*
================================================================================
��ṹ����:TB_SERMN
��ṹ����:�̻����÷����ӱ�
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_SERMN;
drop index AK_TB_SERMN;
drop table TB_SERMN;
create table TB_SERMN  (                                       
   SERMN_ID           INTEGER                 not null,            /*���÷�����ID      */   
   SERMN001           INTEGER                 not null,            /*���÷�����ID      */   
   SERMN002           INTEGER                 not null,            /*γ��ID            */  
   SERMN003           NUMBER(4),                                   /*����              */           
   SERMN004           NUMBER(6,2),                                 /*����              */ 
   SERMN005           NUMBER(6,2),                                 /*�Ϲ���            */
   SERMN006           NUMBER(6,2),                                 /*ƽ����            */    
   SERMN007           NUMBER(6,2),                                 /*��ͬƷ��ƽ��ˮƽ  */   
   SERMN008           NUMBER(6,2),                                 /*γ���ܷ�          */               
   CREATE_USER        VARCHAR2(12),                                /*������Ա          */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����      */
   CREATE_DATE        DATE,                                        /*��������          */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա          */
   MODI_DATE          DATE,                                        /*�޸�����          */
   FLAG               NUMBER(1),                                   /*����״̬          */
   
   constraint PK_TB_SERMN primary key (SERMN_ID)                               
);                                           
create unique index AK_TB_SERMN on TB_SERMN (SERMN001,SERMN002,FLAG);               
create sequence SEQ_TB_SERMN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMN to public;                                     
grant index  on TB_SERMN to public;                                     
grant update on TB_SERMN to public;                                      
grant delete on TB_SERMN to public;                                       
grant insert on TB_SERMN to public;                                      
grant select on SEQ_TB_SERMN to public;                                        