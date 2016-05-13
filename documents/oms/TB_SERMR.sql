/*
================================================================================
��ṹ����:TB_SERMR
��ṹ����:��ɫ��������
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_SERMR;
drop index AK_TB_SERMR;
drop table TB_SERMR;
create table TB_SERMR  (                                       
   SERMR_ID           INTEGER                 not null,            /*��ɫ������ID     */   
   SERMR001           NUMBER(4)               not null,            /*���             */     
   SERMR002           VARCHAR2(255),                               /*��ע             */            
   CREATE_USER        VARCHAR2(12),                                /*������Ա          */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����      */
   CREATE_DATE        DATE,                                        /*��������          */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա          */
   MODI_DATE          DATE,                                        /*�޸�����          */
   FLAG               NUMBER(1),                                   /*����״̬          */
   
   constraint PK_TB_SERMR primary key (SERMR_ID)                               
);                                           
create unique index AK_TB_SERMR on TB_SERMR (SERMR001,FLAG);               
create sequence SEQ_TB_SERMR minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMR to public;                                     
grant index  on TB_SERMR to public;                                     
grant update on TB_SERMR to public;                                      
grant delete on TB_SERMR to public;                                       
grant insert on TB_SERMR to public;                                      
grant select on SEQ_TB_SERMR to public;                                        