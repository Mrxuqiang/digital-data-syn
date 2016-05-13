/*
================================================================================
��ṹ����:TB_PURHA
��ṹ����:�������뵥����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PURHA;
drop index AK_TB_PURHA;
drop table TB_PURHA;
create table TB_PURHA  (
   PURHA_ID           INTEGER                             not null,     /*���뵥ID           */ 
   PURHA001           INTEGER                             not null,     /*���뵥��           */ 
   PURHA002           VARCHAR2(30)                        not null,     /*���뵥��           */ 
   PURHA003           DATE                                not null,     /*��������           */ 
   PURHA004           INTEGER                             not null,     /*����Ӫ����֯       */ 
   PURHA005           INTEGER                             not null,     /*���벿��           */ 
   PURHA006           INTEGER                             not null,     /*������             */ 
   PURHA007           INTEGER,                                          /*�ͻ�               */ 
   PURHA008           VARCHAR2(1)                         not null,     /*��������           */ 
   PURHA009           VARCHAR2(255)                                     /*��ע               */ 
   PURHA010           VARCHAR2(1),                                      /*���״̬           */ 
   PURHA011           INTEGER,                                          /*¼����             */ 
   PURHA012           DATE,                                             /*¼������           */ 
   PURHA013           INTEGER,                                          /*�����             */ 
   PURHA014           DATE,                                             /*�������           */ 
   CREATE_USER        VARCHAR2(12),                                     /*������Ա           */
   USER_GROUP         VARCHAR2(12),                                     /*������Ա����       */                               
   CREATE_DATE        DATE,                                             /*��������           */
   MODIFIER           VARCHAR2(12),                                     /*�޸���Ա           */
   MODI_DATE          DATE,                                             /*�޸�����           */
   FLAG               NUMBER(1),                                        /*����״̬           */
   constraint PK_TB_PURHA primary key (PURHA_ID)
);
create unique index AK_TB_PURHA on TB_PURHA (PURHA_ID,PURHA001, PURHA002);
create sequence SEQ_TB_PURHA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURHA to public;
grant index  on TB_PURHA to public;
grant update on TB_PURHA to public; 
grant delete on TB_PURHA to public;  
grant insert on TB_PURHA to public; 
grant select on SEQ_TB_PURHA to public;   