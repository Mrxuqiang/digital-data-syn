/*
================================================================================
��ṹ����:TB_SERGA
��ṹ����:�㲥������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SERGA;
drop index AK_TB_SERGA;
drop table TB_SERGA;
create table TB_SERGA  (                                       
   SERGA_ID           INTEGER                 not null,            /*��ֵ����ID      */   
   SERGA001           INTEGER                 not null,            /*�㲥����        */   
   SERGA002           VARCHAR2(30)            not null,            /*�㲥����        */   
   SERGA003           DATE                    not null,            /*�㲥����        */   
   SERGA004           VARCHAR2(12),                                /*�㲥��          */   
   SERGA005           VARCHAR2(1),                                 /*���ݷ���        */   
   SERGA006           VARCHAR2(255),                               /*�㲥����        */   
   CREATE_USER        VARCHAR2(12),                                /*������Ա        */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����    */
   CREATE_DATE        DATE,                                        /*��������        */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա        */
   MODI_DATE          DATE,                                        /*�޸�����        */
   FLAG               NUMBER(1),                                   /*����״̬        */
   
   constraint PK_TB_SERGA primary key (SERGA_ID)                               
);                                           
create unique index AK_TB_SERGA on TB_SERGA (SERGA001,SERGA002);               
create sequence SEQ_TB_SERGA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERGA to public;                                     
grant index  on TB_SERGA to public;                                     
grant update on TB_SERGA to public;                                      
grant delete on TB_SERGA to public;                                       
grant insert on TB_SERGA to public;                                      
grant select on SEQ_TB_SERGA to public;                                        