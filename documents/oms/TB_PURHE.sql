/*
================================================================================
��ṹ����:TB_PURHE
��ṹ����:�ͻ��������õ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PURHE;
drop index AK_TB_PURHE;
drop table TB_PURHE;
create table TB_PURHE  (
   PURHE_ID           INTEGER                             not null,     /*���õ�ID           */ 
   PURHE001           INTEGER                             not null,     /*���õ���           */ 
   PURHE002           VARCHAR2(30)                        not null,     /*���õ���           */ 
   PURHE003           DATE                                not null,     /*��������           */ 
   PURHE004           INTEGER                             not null,     /*���뵥��           */    
   PURHE005           INTEGER                             not null,     /*����Ӫ����֯       */ 
   PURHE006           INTEGER                             not null,     /*���ò���           */ 
   PURHE007           INTEGER                             not null,     /*������             */ 
   PURHE008           VARCHAR2(1)                         not null,     /*��������           */
   PURHE009           INTEGER                             not null,     /*�ͻ�ID             */    
   PURHE010           VARCHAR2(255),                                    /*��ע               */ 
   PURHE011           VARCHAR2(1),                                      /*���״̬           */ 
   PURHE012           INTEGER,                                          /*¼����             */ 
   PURHE013           DATE,                                             /*¼������           */ 
   PURHE014           INTEGER,                                          /*�����             */ 
   PURHE015           DATE,                                             /*�������           */ 
   CREATE_USER        VARCHAR2(12),                                     /*������Ա           */
   USER_GROUP         VARCHAR2(12),                                     /*������Ա����       */                               
   CREATE_DATE        DATE,                                             /*��������           */
   MODIFIER           VARCHAR2(12),                                     /*�޸���Ա           */
   MODI_DATE          DATE,                                             /*�޸�����           */
   FLAG               NUMBER(1),                                        /*����״̬           */
   constraint PK_TB_PURHE primary key (PURHE_ID)
);
create unique index AK_TB_PURHE on TB_PURHE (PURHE_ID,PURHE001, PURHE002);
create sequence SEQ_TB_PURHE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURHE to public;
grant index  on TB_PURHE to public;
grant update on TB_PURHE to public; 
grant delete on TB_PURHE to public;  
grant insert on TB_PURHE to public; 
grant select on SEQ_TB_PURHE to public;   