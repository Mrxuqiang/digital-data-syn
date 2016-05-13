/*
================================================================================
��ṹ����:TB_SERMG
��ṹ����:�̻����ÿ۷���ID
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_SERMG;
drop index AK_TB_SERMG;
drop table TB_SERMG;
create table TB_SERMG  (                                       
   SERMG_ID           INTEGER                 not null,            /*�̻����ÿ۷���ID  */   
   SERMG001           VARCHAR2(4)             not null,            /*���              */   
   SERMG002           VARCHAR2(2)             not null,            /*�·�              */   
   SERMG003           VARCHAR2(255),                               /*��ע              */          
   CREATE_USER        VARCHAR2(12),                                /*������Ա          */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����      */
   CREATE_DATE        DATE,                                        /*��������          */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա          */
   MODI_DATE          DATE,                                        /*�޸�����          */
   FLAG               NUMBER(1),                                   /*����״̬          */
   
   constraint PK_TB_SERMG primary key (SERMG_ID)                               
);                                           
create unique index AK_TB_SERMG on TB_SERMG (SERMG001,SERMG002,FLAG);               
create sequence SEQ_TB_SERMG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMG to public;                                     
grant index  on TB_SERMG to public;                                     
grant update on TB_SERMG to public;                                      
grant delete on TB_SERMG to public;                                       
grant insert on TB_SERMG to public;                                      
grant select on SEQ_TB_SERMG to public;                                        