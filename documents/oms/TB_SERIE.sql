/*
================================================================================
��ṹ����:TB_SERIE
��ṹ����:Ѳ��Υ��۷ֵ�����
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SERIE;
drop index AK_TB_SERIE;
drop table TB_SERIE;
create table TB_SERIE  (                                       
   SERIE_ID           INTEGER                 not null,            /*Ѳ��Υ��۷ֵ���ID     */   
   SERIE001           INTEGER                 not null,            /*����                   */   
   SERIE002           VARCHAR2(30)            not null ,           /*����                   */   
   SERIE003           DATE,                                        /*Ѳ������               */   
   SERIE004           VARCHAR2(10) ,                               /*Ѳ�쿪ʼʱ��           */ 
   SERIE005           VARCHAR2(10) ,                               /*Ѳ�����ʱ��           */     
   SERIE006           INTEGER,                                     /*Ѳ����Ա               */   
   SERIE007           INTEGER,                                     /*Ѳ���̳�               */ 
   SERIE008           INTEGER,                                     /*Ѳ��¥��               */   
   SERIE009           INTEGER,                                     /*Ѳ��¥��               */
   SERIE010           INTEGER,                                     /*¼����                 */
   SERIE011           DATE,                                        /*¼������               */
   SERIE012           VARCHAR2(1),                                 /*����״̬               */
   SERIE013           INTEGER,                                     /*�����                 */
   SERIE014           DATE,                                        /*�������               */
   SERIE015           VARCHAR2(255),                               /*��ע                   */
   CREATE_USER        VARCHAR2(12),                                /*������Ա               */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����           */
   CREATE_DATE        DATE,                                        /*��������               */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա               */
   MODI_DATE          DATE,                                        /*�޸�����               */
   FLAG               NUMBER(1),                                   /*����״̬               */
   
   constraint PK_TB_SERIE primary key (SERIE_ID)                               
); 
create unique index AK_TB_SERIE on TB_SERIE (SERIE001,SERIE002);                                                           
create sequence SEQ_TB_SERIE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIE to public;                                     
grant index  on TB_SERIE to public;                                     
grant update on TB_SERIE to public;                                      
grant delete on TB_SERIE to public;                                       
grant insert on TB_SERIE to public;                                      
grant select on SEQ_TB_SERIE to public;                                        