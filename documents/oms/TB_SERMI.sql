/*
================================================================================
��ṹ����:TB_SERMI
��ṹ����:�۷�γ�ȶ���
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_SERMI;
drop index AK_TB_SERMI;
drop table TB_SERMI;
create table TB_SERMI  (                                       
   SERMI_ID           INTEGER                 not null,            /*γ��ID            */   
   SERMI001           VARCHAR2(20)            not null,            /*γ�ȱ���          */   
   SERMI002           VARCHAR2(100)           not null,            /*γ������          */   
   SERMI003           VARCHAR2(255),                               /*��ע              */            
   CREATE_USER        VARCHAR2(12),                                /*������Ա          */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����      */
   CREATE_DATE        DATE,                                        /*��������          */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա          */
   MODI_DATE          DATE,                                        /*�޸�����          */
   FLAG               NUMBER(1),                                   /*����״̬          */
   
   constraint PK_TB_SERMI primary key (SERMI_ID)                               
);                                           
create unique index AK_TB_SERMI on TB_SERMI (SERMI001,FLAG);               
create sequence SEQ_TB_SERMI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMI to public;                                     
grant index  on TB_SERMI to public;                                     
grant update on TB_SERMI to public;                                      
grant delete on TB_SERMI to public;                                       
grant insert on TB_SERMI to public;                                      
grant select on SEQ_TB_SERMI to public;                                        