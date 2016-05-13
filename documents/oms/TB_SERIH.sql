/*
================================================================================
��ṹ����:TB_SERIH
��ṹ����:Ѳ�����ӱ�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SERIH;
drop index AK_TB_SERIH;
drop table TB_SERIH;
create table TB_SERIH  (                                       
   SERIH_ID           INTEGER                 not null,            /*Ѳ����ID               */   
   SERIH001           INTEGER                 not null,            /*Ѳ����ID               */   
   SERIH002           INTEGER                 not null ,           /*Ѳ����ĿID             */   
   SERIH003           VARCHAR2(1),                                 /*Ѳ�����               */   
   SERIH004           VARCHAR2(255) ,                              /*Ѳ��˵��               */ 
   SERIH005           VARCHAR2(255) ,                              /*��ע                   */     
   CREATE_USER        VARCHAR2(12),                                /*������Ա                   */
   USER_GROUP         VARCHAR2(12),                                /*������Ա����               */
   CREATE_DATE        DATE,                                        /*��������                   */
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա                   */
   MODI_DATE          DATE,                                        /*�޸�����                   */
   FLAG               NUMBER(1),                                   /*����״̬                   */
   
   constraint PK_TB_SERIH primary key (SERIH_ID)                               
); 
create unique index AK_TB_SERIH on TB_SERIH (SERIH001,SERIH002,FLAG);                                                           
create sequence SEQ_TB_SERIH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIH to public;                                     
grant index  on TB_SERIH to public;                                     
grant update on TB_SERIH to public;                                      
grant delete on TB_SERIH to public;                                       
grant insert on TB_SERIH to public;                                      
grant select on SEQ_TB_SERIH to public;                                        