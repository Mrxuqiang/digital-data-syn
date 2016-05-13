/*
================================================================================
��ṹ����:TB_SERMQ
��ṹ����:γ���ֶܷ����ӱ�
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_SERMQ;
drop index AK_TB_SERMQ;
drop table TB_SERMQ;
create table TB_SERMQ  (                                       
   SERMQ_ID           INTEGER                 not null,            /*γ���ֶܷ�����ID */   
   SERMQ001           INTEGER                 not null,            /*γ���ֶܷ�����ID */   
   SERMQ002           INTEGER                 not null,            /*γ��ID           */  
   SERMQ003           NUMBER(3),                                   /*����             */ 
   SERMQ004           VARCHAR2(255),                               /*��ע             */      
   CREATE_USER        VARCHAR2(12),                                /*������Ա          */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����      */
   CREATE_DATE        DATE,                                        /*��������          */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա          */
   MODI_DATE          DATE,                                        /*�޸�����          */
   FLAG               NUMBER(1),                                   /*����״̬          */
   
   constraint PK_TB_SERMQ primary key (SERMQ_ID)                               
);                                           
create unique index AK_TB_SERMQ on TB_SERMQ (SERMQ001,SERMQ002,FLAG);               
create sequence SEQ_TB_SERMQ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMQ to public;                                     
grant index  on TB_SERMQ to public;                                     
grant update on TB_SERMQ to public;                                      
grant delete on TB_SERMQ to public;                                       
grant insert on TB_SERMQ to public;                                      
grant select on SEQ_TB_SERMQ to public;                                        