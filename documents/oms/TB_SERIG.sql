/*
================================================================================
��ṹ����:TB_SERIG
��ṹ����:Ѳ��������
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SERIG;
drop index AK_TB_SERIG;
drop table TB_SERIG;
create table TB_SERIG  (                                       
   SERIG_ID           INTEGER                 not null,            /*Ѳ����ϸID             */   
   SERIG001           INTEGER                 not null,            /*����                   */   
   SERIG002           VARCHAR2(30)            not null ,           /*����                   */   
   SERIG003           DATE,                                        /*Ѳ������               */   
   SERIG004           VARCHAR2(10) ,                               /*Ѳ����ʼʱ��           */ 
   SERIG005           VARCHAR2(10) ,                               /*Ѳ������ʱ��           */     
   SERIG006           INTEGER,                                     /*Ѳ����Ա               */   
   SERIG007           INTEGER,                                     /*Ѳ���̳�               */ 
   SERIG008           INTEGER,                                     /*Ѳ��¥��               */   
   SERIG009           INTEGER,                                     /*Ѳ��¥��               */
   SERIG010           INTEGER,                                     /*¼����                 */
   SERIG011           DATE,                                        /*¼������               */
   SERIG012           VARCHAR2(1),                                 /*����״̬               */
   SERIG013           INTEGER,                                     /*�����                 */
   SERIG014           DATE,                                        /*�������               */
   SERIG015           VARCHAR2(255),                               /*��ע                   */
   CREATE_USER        VARCHAR2(12),                                /*������Ա                   */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����               */
   CREATE_DATE        DATE,                                        /*��������                   */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա                   */
   MODI_DATE          DATE,                                        /*�޸�����                   */
   FLAG               NUMBER(1),                                   /*����״̬                   */
   
   constraint PK_TB_SERIG primary key (SERIG_ID)                               
); 
create unique index AK_TB_SERIG on TB_SERIG (SERIG001,SERIG002,FLAG);                                                           
create sequence SEQ_TB_SERIG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIG to public;                                     
grant index  on TB_SERIG to public;                                     
grant update on TB_SERIG to public;                                      
grant delete on TB_SERIG to public;                                       
grant insert on TB_SERIG to public;                                      
grant select on SEQ_TB_SERIG to public;                                        