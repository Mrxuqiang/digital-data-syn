/*
================================================================================
��ṹ����:TB_PUBHS
��ṹ����:��Ʒ��������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBHS;
drop index AK_TB_PUBHS;
drop table TB_PUBHS;
create table TB_PUBHS  (
   PUBHS_ID           INTEGER                      not null,       /*��Ʒ����ID             */ 
   PUBHS001           VARCHAR2(30)                 not null,       /*��Ʒ���Ա��           */ 
   PUBHS002           VARCHAR2(30)                 not null,       /*��Ʒ��������           */ 
   PUBHS003           INTEGER                      not null,       /*Ӫ����֯               */ 
   PUBHS004           INTEGER                      not null,       /*�ƶ���                 */ 
   PUBHS005           DATE                         not null,       /*�ƶ�����               */ 
   PUBHS006           VARCHAR2(4)                  not null,       /*������               */ 
   PUBHS007           INTEGER,                                     /*�����                 */ 
   PUBHS008           DATE,                                        /*�������               */ 
   PUBHS009           VARCHAR2(1),                                 /*���״̬               */ 
   PUBHS010           VARCHAR2(255),                               /*��ע                   */ 
   CREATE_USER        VARCHAR2(12),                                /*������Ա          */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����      */                               
   CREATE_DATE        DATE,                                        /*��������          */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա          */
   MODI_DATE          DATE,                                        /*�޸�����          */
   FLAG               NUMBER(1),                                   /*����״̬          */
   constraint PK_TB_PUBHS primary key (PUBHS_ID)
);
create unique index AK_TB_PUBHS on TB_PUBHS (PUBHS001,PUBHS002);
create sequence SEQ_TB_PUBHS minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHS to public;
grant index  on TB_PUBHS to public;
grant update on TB_PUBHS to public; 
grant delete on TB_PUBHS to public;  
grant insert on TB_PUBHS to public; 
grant select on SEQ_TB_PUBHS to public;   